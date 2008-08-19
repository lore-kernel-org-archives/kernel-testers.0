From: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Subject: Re: [Bug #11313] Plugging HDMI causes "unable to handle kernel paging
 request"
Date: Tue, 19 Aug 2008 16:53:59 -0700
Message-ID: <48AB5D17.5030600@goop.org>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>	 <sNRO-BDDjQL.A.DYF.sazpIB@albercik> <b170af450808171228i37951c6vd77071da7584669b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b170af450808171228i37951c6vd77071da7584669b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Rafa=C5=82 Mi=C5=82ecki wrote:
> Bug still exists in current git (tested 15 minutes ago).
>  =20

Could you apply this patch and post the output of dmesg from booting (n=
o
need to crash it again).

Thanks,
    J

diff -r 3f465c361b3c arch/x86/mm/init_64.c
--- a/arch/x86/mm/init_64.c	Wed Aug 13 20:50:10 2008 -0700
+++ b/arch/x86/mm/init_64.c	Tue Aug 19 16:50:10 2008 -0700
@@ -331,6 +331,8 @@
 		}
=20
 		if (pmd_val(*pmd)) {
+			printk("addr %lx reusing pmd %lx %016lx\n",
+			       address, __pa(pmd), pmd_val(*pmd));
 			if (!pmd_large(*pmd))
 				last_map_addr =3D phys_pte_update(pmd, address,
 								 end);
@@ -392,6 +394,8 @@
 		}
=20
 		if (pud_val(*pud)) {
+			printk("addr %lx reusing pud %lx %016lx\n",
+			       addr, __pa(pud), pud_val(*pud));
 			if (!pud_large(*pud))
 				last_map_addr =3D phys_pmd_update(pud, addr, end,
 							 page_size_mask);
@@ -500,6 +504,8 @@
 			next =3D end;
=20
 		if (pgd_val(*pgd)) {
+			printk("addr %lx reusing pgd %lx %016lx\n",
+			       __pa(start), __pa(pgd), pgd_val(*pgd));
 			last_map_addr =3D phys_pud_update(pgd, __pa(start),
 						 __pa(end), page_size_mask);
 			continue;

