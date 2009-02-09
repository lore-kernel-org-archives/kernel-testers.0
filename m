From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12503] [slab corruption] BUG key_jar: Poison overwritten
Date: Mon, 9 Feb 2009 01:40:15 +0100
Message-ID: <200902090140.16694.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.z2G.h30jJB@chimera> <20090208221231.GA9160@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090208221231.GA9160-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 08 February 2009, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12503
> > Subject		: [slab corruption] BUG key_jar: Poison overwritten
> > Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> > Date		: 2009-01-15 18:16 (25 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123204353425825&w=4
> > Handled-By	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> 
> This slab corruption has not triggered again. It's either a very rare thing (in 
> which case there's no realistic way to debug it via this angle), or it got fixed 
> meanwhile.
> 
> Please close it. Thanks,

Closed as "unreproducible".

Thanks,
Rafael
