From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Mon, 27 Jul 2009 12:52:28 -0400
Message-ID: <20090727165228.GC25626@Krystal>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.0KH.4XObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <H5-1lZIIeYK.A.0KH.4XObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

It should be fixed now by recents commits to the cpufreq tree, which got  
into mainline: 

42a06f2166f2f6f7bf04f32b4e823eacdceafdc9
b253d2b2d28ead6fed012feb54694b3d0562839a
b14893a62c73af0eca414cfed505b8c09efc613c
7d26e2d5e2da37e92c6c7644b26b294dedd8c982
37c90e8887efd218dc4af949b7f498ca2da4af9f
5a75c82828e7c088ca6e7b4827911dc29cc8e774
ee88415caf736b89500f16e0a545614541a45005
3f4a782b5ce2698b1870b5a7b573cd721d4fce33
5e1596f75395e7a402e1059c518e633d2732dcf8

Mathieu


* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13475
> Subject		: suspend/hibernate lockdep warning
> Submitter	: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-06-02 10:00 (55 days old)
> References	: http://marc.info/?l=linux-kernel&m=124393723321241&w=4
> Handled-By	: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/28660/
> 
> 
> 

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68
