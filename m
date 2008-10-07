From: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Subject: Re: [Bug #11569] Don't complain about disabled irqs when the system has paniced
Date: Tue, 7 Oct 2008 17:54:07 +0200
Message-ID: <20081007155407.GO20740@one.firstfloor.org>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.qTH.6475IB@wind> <20081006060238.GB3180@one.firstfloor.org> <200810080244.06958.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200810080244.06958.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> Why doesn't it use something like nmi_shootdown_cpus on panic rather than

There are unfortunately a couple of BIOS around that hang randomly when
NMIs are used (e.g. common problem on ThinkPads). That broke the neck
of the NMI watchdog too.

But yes if we had some way to distingush these broken systems from
sane ones NMI would be the way to go in panic.

-Andi
-- 
ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org
