From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11388] 2.6.27-rc3 warns about MTRR range; only 3 of 16gb of memory is usable
Date: Sat, 30 Aug 2008 23:39:57 +0200
Message-ID: <200808302339.58794.rjw@sisk.pl>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.8uE.libuIB@albercik> <86802c440808301429u2a719571raf0d8001a89a1388@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301429u2a719571raf0d8001a89a1388-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>

On Saturday, 30 of August 2008, Yinghai Lu wrote:
> On Sat, Aug 30, 2008 at 12:50 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11388
> > Subject         : 2.6.27-rc3 warns about MTRR range; only 3 of 16gb of memory is usable
> > Submitter       : Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
> > Date            : 2008-08-20 17:38 (11 days old)
> >
> >
> >
> 
> this should be closed
> 
> commit	38cc1c3df77c1bb739a4766788eb9fa49f16ffdf
> x86: work around MTRR mask setting
> 
> fixed it.

Thanks, closed now.

Rafael
