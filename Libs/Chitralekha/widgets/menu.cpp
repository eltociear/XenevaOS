/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2023, Manas Kamal Choudhury
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*
**/

#include "menu.h"
#include "..\font.h"
#include <sys\_keproc.h>

/**
 * TODO : Needs reimplementation of menu widgets
 * it's buggy
 *
 */

extern void ChPopupMenuPaint(ChPopupMenu* popup);

void ChPopupMenuMouseEvent(ChWidget* wid, ChWindow* win, int x, int y, int button){
	ChPopupMenu* pm = (ChPopupMenu*)wid;
	bool _need_paint = false;
	ChMenuItem *selectedItem = NULL;
	/* immediately pass the information to menu item widgets*/
	for (int i = 0; i < pm->MenuItems->pointer; i++){
		ChMenuItem* mi = (ChMenuItem*)list_get_at(pm->MenuItems, i);
		mi->wid.hover = false;
		if ((x >= (pm->backWindow->shwin->x + pm->wid.x + mi->wid.x)) &&
			(x <= (pm->backWindow->shwin->x + pm->wid.x + mi->wid.x + mi->wid.w)) &&
			(y >= (pm->backWindow->shwin->y + pm->wid.y + mi->wid.y)) &&
			(y <= (pm->backWindow->shwin->y + pm->wid.y + mi->wid.y + mi->wid.h))){
			mi->wid.hover = true;
			if (pm->lastActiveMenu && pm->lastActiveMenu != pm){
				if (!pm->lastActiveMenu->backWindow->hidden){
					ChPopupWindowHide(pm->lastActiveMenu->backWindow, win);
					_KeProcessSleep(200);
				}
				pm->lastActiveMenu = NULL;
			}
			if (mi->menu){
				if (mi->menu->backWindow) {
					if (mi->menu->backWindow->hidden){
						ChMenuShow(mi->menu, pm->x_loc + mi->wid.w + 2,pm->y_loc + mi->wid.y);
						mi->menu->backWindow->hidden = false;
						_KeProcessSleep(200);
						
					}
					else{
						ChPopupWindowHide(mi->menu->backWindow,win);
						_KeProcessSleep(200);
					}
				}
				else {
					ChMenuShow(mi->menu, pm->x_loc + mi->wid.w + 2,pm->y_loc + mi->wid.y);
					_KeProcessSleep(200);
				}
				pm->backWindow->shwin->popuped = true;
				pm->lastActiveMenu = mi->menu;
			}

			_need_paint = true;
			pm->lastSelectedMenuItem = mi;
			break;
		}
	}

	if (button){
		win->selectedMenuItem = pm->lastSelectedMenuItem;
	}

	if (_need_paint) {
		ChPopupMenuPaint(pm);
		ChPopupWindowUpdate(pm->backWindow, 0, 0, pm->wid.w, pm->wid.h);
		_KeProcessSleep(200);
	}
}

/*
 * ChPopupMenuDestroy -- destroy handler for popup menu
 * @param widget -- Pointer to popup menu widget
 * @param win -- Pointer to main window
 */
void ChPopupMenuDestroy(ChWidget* widget, ChWindow* win) {
	_KePrint("Popup menu destroying \r\n");
	ChPopupMenu* pm = (ChPopupMenu*)widget;
	for (int i = 0; i < pm->MenuItems->pointer; i++) {
		ChMenuItem* mi = (ChMenuItem*)list_get_at(pm->MenuItems, i);
		if (mi->wid.ChDestroy)
			mi->wid.ChDestroy((ChWidget*)mi, win);
	}
	list_clear_all(pm->MenuItems);
	free(pm);
	_KePrint("Popup Menu Destroyed \r\n");
}

/*
 * ChCreatePopupMenu -- create a new popup menu
 * @param mainWin -- Pointer to Main Window
 */
ChPopupMenu* ChCreatePopupMenu(ChWindow* mainWin) {
	ChPopupMenu* pm = (ChPopupMenu*)malloc(sizeof(ChPopupMenu));
	memset(pm, 0, sizeof(ChPopupMenu));
	pm->mainWindow = mainWin;
	pm->wid.ChMouseEvent = ChPopupMenuMouseEvent;
	pm->MenuItems = initialize_list();
	pm->wid.ChDestroy = ChPopupMenuDestroy;
	return pm;
}


void ChMenuItemDestroy(ChWidget* wid, ChWindow* win) {
	ChMenuItem* mi = (ChMenuItem*)wid;
	_KePrint("MenuItem destroying %s\r\n", mi->title);
	free(mi->title);
	if (mi->menu){
		if (mi->menu->wid.ChDestroy)
			mi->menu->wid.ChDestroy((ChWidget*)mi->menu, win);
	}
	free(mi);
}
/*
 * ChCreateMenuItem -- create a new menu item
 * @param title -- title of the menu item
 * @param pm -- Pointer to popup menu
 */
ChMenuItem* ChCreateMenuItem(char* title,ChPopupMenu* pm) {
	ChMenuItem* mi = (ChMenuItem*)malloc(sizeof(ChMenuItem));
	memset(mi, 0, sizeof(ChMenuItem));
	mi->wid.h = DEFAULT_MENU_ITEM_HEIGHT;
	mi->wid.x = 0;
	memset(mi, 0, sizeof(ChMenuItem));
	mi->title = (char*)malloc(strlen(title));
	strcpy(mi->title, title);
	mi->menu = NULL;
	list_add(pm->MenuItems, mi);
	mi->wid.ChDestroy = ChMenuItemDestroy;
	return mi;
}

void ChMenuRecalculateDimensions(ChPopupMenu * pm) {
	int w = 0;
	int h = 0;
	if (!pm->mainWindow)
		return;
	ChFontSetSize(pm->mainWindow->app->baseFont, 10);
	int pad_y = DEFAULT_MENU_ITEM_BUTTON_PADY;
	h = pad_y;
	for (int i = 0; i < pm->MenuItems->pointer; i++) {
		ChMenuItem* mi = (ChMenuItem*)list_get_at(pm->MenuItems, i);
		int stringW = ChFontGetWidth(pm->mainWindow->app->baseFont, mi->title);
		if (w < stringW)
			w = stringW;
		if (mi->seperator)
			h += DEFAULT_MENU_ITEM_HEIGHT + DEFAULT_MENU_ITEM_BUTTON_PADY + 2;
		else
			h += DEFAULT_MENU_ITEM_HEIGHT + DEFAULT_MENU_ITEM_BUTTON_PADY;
	}
	if (!w && !h){
		w = DEFAULT_POPUP_MENU_WIDTH;
		h = DEFAULT_POPUP_MENU_HEIGHT;
	}
	else 
		w += 20*2;


	if (!pm->x_loc && !pm->y_loc){
		pm->x_loc = 5;
		pm->y_loc = 62;
	}

	pm->wid.w = w;
	pm->wid.h = h;
	for (int i = 0; i < pm->MenuItems->pointer; i++) {
		ChMenuItem* mi = (ChMenuItem*)list_get_at(pm->MenuItems, i);
		mi->wid.w = pm->wid.w;
	}
}

void ChMenuShow(ChPopupMenu* menu, int x, int y) {
	if (menu->backWindow) {
		ChPopupMenuPaint(menu);
		/*ChPopupWindowShow(menu->backWindow, menu->mainWindow);*/
		menu->x_loc = x + 5;
		menu->y_loc = y;
		ChPopupWindowUpdateLocation(menu->backWindow, menu->mainWindow, x + 5, y);
		ChPopupWindowUpdate(menu->backWindow, 0, 0, menu->wid.w, menu->wid.h);
		menu->backWindow->wid.visible = true;
		_KeProcessSleep(180);
	}
	else {
		ChMenuRecalculateDimensions(menu);
		menu->x_loc = x + 5;
		menu->y_loc = y;
		menu->backWindow = ChCreatePopupWindow(menu->mainWindow->app, menu->mainWindow, menu->x_loc, menu->y_loc, menu->wid.w, menu->wid.h, 0);
		ChPopupMenuPaint(menu);
		list_add(menu->backWindow->widgets, menu);
		//ChPopupWindowShow(menu->backWindow, menu->mainWindow);
		ChPopupWindowUpdate(menu->backWindow, 0, 0, menu->wid.w, menu->wid.h);
		menu->backWindow->wid.visible = true;
		_KeProcessSleep(180);
	}
}

/*
 * ChMenuHide -- Hide a popup menu and its sub menus
 * @param menu -- Pointer to popup menu
 */
void ChMenuHide(ChPopupMenu* menu) {
	if (!menu)
		return;
	for (int i = 0; i < menu->MenuItems->pointer; i++) {
		ChMenuItem *item = (ChMenuItem*)list_get_at(menu->MenuItems, i);
		if (item->menu) {
			ChMenuHide(item->menu);
		}
	}

	if (menu->backWindow) {
		if (!menu->backWindow->hidden) {
			ChPopupWindowHide(menu->backWindow,menu->mainWindow);
			_KeProcessSleep(100);
		}
	}
}
