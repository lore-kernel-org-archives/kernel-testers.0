From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12503] [slab corruption] BUG key_jar: Poison overwritten
Date: Sun, 8 Feb 2009 23:12:31 +0100
Message-ID: <20090208221231.GA9160@elte.hu>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.z2G.h30jJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <sWhNs83kKPE.A.z2G.h30jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12503
> Subject		: [slab corruption] BUG key_jar: Poison overwritten
> Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date		: 2009-01-15 18:16 (25 days old)
> References	: http://marc.info/?l=linux-kernel&m=123204353425825&w=4
> Handled-By	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This slab corruption has not triggered again. It's either a very rare thing (in 
which case there's no realistic way to debug it via this angle), or it got fixed 
meanwhile.

Please close it. Thanks,

	Ingo
