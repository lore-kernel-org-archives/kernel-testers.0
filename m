From: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: [BUILD-FAILURE] 2.6.26-rc8-mm1 - x86 - __ptep_modify_prot_start() missing
Date: Thu, 3 Jul 2008 17:59:43 +0530
Message-ID: <20080703122943.GB6451@linux.vnet.ibm.com>
References: <20080703020236.adaa51fa.akpm@linux-foundation.org>
Reply-To: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080703020236.adaa51fa.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org

Hi Andrew,

2.6.26-rc8-mm1 kernel build fails on the x86

  CC      arch/x86/kernel/paravirt.o
arch/x86/kernel/paravirt.c:383: error: =E2=80=98__ptep_modify_prot_star=
t=E2=80=99 undeclared here (not in a function)
make[1]: *** [arch/x86/kernel/paravirt.o] Error 1
make: *** [arch/x86/kernel] Error 2

linux-next patches has the changes to the adds the function
__ptep_modify_prot_start as inline, the patch s390-build-fixes.patch
is coverting it into macro. Reverting the s390-build-fixes.patch
fixes the build failure.

--=20
Thanks & Regards,
Kamalesh Babulal,
Linux Technology Center,
IBM, ISTL.
