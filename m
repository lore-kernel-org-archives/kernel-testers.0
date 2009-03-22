From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12872] pwc mmap always fails with EAGAIN
Date: Sun, 22 Mar 2009 15:45:16 +0100
Message-ID: <20090322144516.GA13129@elte.hu>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera> <l8NZ2a3iQtG.A._5H.fZTxJB@chimera> <200903221337.35237.M4rkusXXL@web.de> <20090322142837.2df0d93d@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090322142837.2df0d93d-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org> wrote:

> On Sun, 22 Mar 2009 13:37:35 +0100
> Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org> wrote:
> 
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me 
> > know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12872
> > > Subject		: pwc mmap always fails with EAGAIN
> > > Submitter	: Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org>
> > > Date		: 2009-03-14 16:42 (8 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=123704902201378&w=4
> > 
> > Still valid for 2.6.29-rc8-git5.
> 
> And not really likely to change until someone with a pwc camera adds lots
> of printks to the code to work out why this happens.

Or does a bisection to figure out the bad commit, because the report 
says that 2.6.28 worked.

The 'howto bisect' portion of:

  http://www.kernel.org/doc/local/git-quick.html

	Ingo
