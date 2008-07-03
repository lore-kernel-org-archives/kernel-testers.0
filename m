From: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
Subject: [BUILD-FAILURE] 2.6.26-rc8-mm1 - build failure at drivers/char/hvc_rtas.c
Date: Thu, 3 Jul 2008 16:52:33 +0530
Message-ID: <20080703112233.GA6451@linux.vnet.ibm.com>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org>
Reply-To: Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758625AbYGCMS0@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20080703020236.adaa51fa.akpm@linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, linux-mm@kvack.org, kernel-testers@vger.kernel.org, rusty@rustcorp.com.au, apw@shadowen.org

Hi Andrew,

2.6.26-rc8-mm1 kernel build fail on the powerpc,=20

In file included from drivers/char/hvc_rtas.c:39:
drivers/char/hvc_console.h:59: error: field =E2=80=98kref=E2=80=99 has =
incomplete type
make[2]: *** [drivers/char/hvc_rtas.o] Error 1
make[1]: *** [drivers/char] Error 2
make: *** [drivers] Error 2

this was already fixed by rusty (http://lkml.org/lkml/2008/6/27/21).

--=20
Thanks & Regards,
Kamalesh Babulal,
Linux Technology Center,
IBM, ISTL.
