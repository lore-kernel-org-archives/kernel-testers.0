From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Thu, 26 Mar 2009 00:48:07 +0100
Message-ID: <20090325234806.GO5932@nowhere>
References: <49BE20B2.9070804@redhat.com> <1237207595.4964.31.camel@kulgan.wumi.org.au> <20090316200736.GD8393@nowhere> <1237244137.4964.54.camel@kulgan.wumi.org.au> <20090318001955.GB5143@nowhere> <1237338986.4801.11.camel@kulgan.wumi.org.au> <1237411441.5211.5.camel@kulgan.wumi.org.au> <1237611639.4933.4.camel@kulgan.wumi.org.au> <20090324114409.GB6058@nowhere> <1238024432.8669.6.camel@kulgan>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=RAM8YsWvC6NPlGb9XSbuyVKOzRBsKDXM153RHbf2dLo=;
        b=u+t8hRHmzOd1dWT8oRlFteDxEsAdPVnPBPsK+CaVFSuLy1VnDktlYJ18E4TaJIQSvl
         aoXFwH4exH5ZTLyjNMDuZ+Fi90evxfQzHEYg8MLW2mTgavBJSOVzD6jm/U1O+8TxFmhq
         m2GE7m12jwR/3H+McakfP/wt4ZoP91R0AwWbs=
Content-Disposition: inline
In-Reply-To: <1238024432.8669.6.camel@kulgan>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Thu, Mar 26, 2009 at 10:10:32AM +1030, Kevin Shanahan wrote:
> On Tue, 2009-03-24 at 12:44 +0100, Frederic Weisbecker wrote:
> > Sorry, I've been late to answer.
> > As I explained in my previous mail, you trace is only
> > a snapshot that happened in 10 msec.
> > 
> > I experimented different sizes for the ring buffer but even
> > a 1 second trace require 20 Mo of memory. And a so huge trace
> > would be impractical.
> > 
> > I think we should keep the trace filters we had previously.
> > If you don't minde, could you please retest against latest -tip
> > the following updated patch? Iadded the filters, fixed the python
> > subshell and also flushed the buffer more nicely according to
> > a recent feature in -tip:
> > 
> > echo > trace 
> > 
> > instead of switching to nop.
> > You will need to pull latest -tip again.
> 
> Ok, thanks for that. I'll get a new -tip kernel ready to test tonight.
> I'm not sure about the change to the python subshell though:
> 
> > while [ "$found" != "True" ]
> > do
> >         # Flush the previous buffer
> >         echo trace > $prefix/trace
> > 
> >         echo 1 > $prefix/tracing_enabled
> >         lat=$(ping -c 1 $addr | grep rtt | grep -Eo " [0-9]+.[0-9]+")
> >         echo 0 > $prefix/tracing_enabled
> > 
> > 	echo $lat
> > 	found=$(python -c "print float(str($lat).strip())")
> >         sleep 0.01
> > done
> 
> kmshanah@kulgan:~$ python -c "print float(str(1.234).strip())"
> 1.234
> 
> That's not going to evaluate to "True" at all is it? What happened to
> the test against the latency threshold value? Did you mean something
> like this?
> 
> kmshanah@kulgan:~$ python -c "print float(str(1.234).strip()) > 5000"
> False
> kmshanah@kulgan:~$ python -c "print float(str(5001.234).strip()) > 5000"
> True


Sorry. I guess I was a bit asleep.
It's a mistake. So you can restore how it was.

Thanks.

 
> Cheers,
> Kevin.
> 
> 
