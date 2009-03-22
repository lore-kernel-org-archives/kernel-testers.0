From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #12867] 2.6.29-rc7 broke r8169 MAC on Thecus n2100 ARM board
Date: Sun, 22 Mar 2009 14:51:23 +0100
Message-ID: <18886.16987.469495.585049@pilspetsen.it.uu.se>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera>
	<l8NZ2a3iQtG.A.rS.mZTxJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <l8NZ2a3iQtG.A.rS.mZTxJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12867
> Subject		: 2.6.29-rc7 broke r8169 MAC on Thecus n2100 ARM board
> Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> Date		: 2009-03-09 20:29 (13 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D123663065403760&w=3D4
> Handled-By	: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>

Fixed in Linus' tree by ea8dbdd17099a9a5864ebd4c87e01e657b19c7ab.
