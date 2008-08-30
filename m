From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11237] corrupt PMD after resume
Date: Sun, 31 Aug 2008 00:04:27 +0200
Message-ID: <200808310004.28470.rjw@sisk.pl>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.kUG.jkbuIB@albercik> <48B9C052.8090404@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48B9C052.8090404-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>

On Saturday, 30 of August 2008, Alan Jenkins wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11237
> > Subject		: corrupt PMD after resume
> > Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> > Date		: 2008-08-02 9:51 (29 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121767073424952&w=4
> > Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > 		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
> >
> >   
> 
> This has been isolated (to disparate buggy BIOSes), patches written and
> tested.  It's more policy decisions now; mainly whether the workaround
> (which wastes 64k) should be applied by default.  So I think you should add
> 
> Patch                   :
> http://marc.info/?l=linux-kernel&m=122001615314700&w=2

Done.

Thanks,
Rafael
