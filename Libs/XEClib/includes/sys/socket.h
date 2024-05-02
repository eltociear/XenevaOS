/**
* BSD 2-Clause License
*
* Copyright (c) 2022-2024, Manas Kamal Choudhury
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

#ifndef __SOCKET_H__
#define __SOCKET_H__

#include <stdint.h>
#include <_xeneva.h>

#ifdef __cplusplus
XE_EXTERN{
#endif


#define AF_UNSPEC 0
#define AF_INET 1
#define AF_RAW 2

#define SOCK_STREAM 1
#define SOCK_DGRAM  2
#define SOCK_RAW    3

#define IPPROTOCOL_ICMP 1
#define IPPROTOCOL_TCP  6
#define IPPROTOCOL_UDP  17

	typedef size_t socklen_t;

	typedef struct _sockaddr_ {
		unsigned short sa_family;  //address family
		char           sa_data[14];
	}sockaddr;

	typedef struct _addrinfo_ {
		int ai_flags;
		int ai_family;
		int ai_socktype;
		int ai_protocol;
		socklen_t ai_addrlen;
		sockaddr *ai_addr;
		char *ai_canonname;
		struct _addinfo_* ai_next;
	}addrinfo;

	typedef struct _iovec_ {
		void* iov_base;
		size_t iov_len;
	}iovec;

	typedef struct _msghdr_ {
		void* msg_name;
		socklen_t msg_namelen;
		iovec *msg_iov;
		size_t msg_iovlen;
		void* msg_control;
		size_t msg_controllen;
		int msg_flags;
	}msghdr;

	XE_LIB int socket(int domain, int type, int protocol);

#ifdef __cplusplus
}
#endif

#endif