From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13424] possible deadlock when doing governor switching
Date: Mon, 27 Jul 2009 23:38:44 +0200
Message-ID: <200907272338.45366.rjw@sisk.pl>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.hdH.DYObKB@chimera> <20090727164814.GB25626@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727164814.GB25626@Krystal>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Monday 27 July 2009, Mathieu Desnoyers wrote:
> It should be fixed now by recents commits to the cpufreq tree, which got
> into mainline:
> 
> 42a06f2166f2f6f7bf04f32b4e823eacdceafdc9
> b253d2b2d28ead6fed012feb54694b3d0562839a
> b14893a62c73af0eca414cfed505b8c09efc613c
> 7d26e2d5e2da37e92c6c7644b26b294dedd8c982
> 37c90e8887efd218dc4af949b7f498ca2da4af9f
> 5a75c82828e7c088ca6e7b4827911dc29cc8e774
> ee88415caf736b89500f16e0a545614541a45005
> 3f4a782b5ce2698b1870b5a7b573cd721d4fce33
> 5e1596f75395e7a402e1059c518e633d2732dcf8

Thanks, closed.

Rafael
