From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Mon, 18 Jan 2010 13:26:22 +0200
Message-ID: <20100118112619.GA8387@redhat.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl> <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain> <20100117123218.GA3182@redhat.com> <84144f021001170618g708a7c14ob1b222ab1cbdaa20@mail.gmail.com> <20100117161726.5752b181@schatten.dmk.lab> <84144f021001170843s67afae24oaabf09e9b13af8db@mail.gmail.com> <84144f021001170923o30d37becw57ebbd780f63b69e@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=xR08Rkn3DQhc7yjAw14Eex3xNzfQcWdM+nXG+/oZPG8=;
        b=jLwyJxkHY+p3xL2MCEQgq9EFAvgeTaAZ44lh6sp84pyiq0THDnvjkOlGx8Y6aBAtDs
         9DFdj+tpPzxBndRGai+Ce3oer+PO8mE3lYVukOQqY30blap5Q6c4YFZWwqyS2CxNVqJG
         mNi+NetpMslZpcdZmj5KyAXgk6j+lXPTwgg7g=
Content-Disposition: inline
In-Reply-To: <84144f021001170923o30d37becw57ebbd780f63b69e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Sun, Jan 17, 2010 at 07:23:35PM +0200, Pekka Enberg wrote:
> On Sun, Jan 17, 2010 at 6:43 PM, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> wrote:
> > Hi Florian,
> >
> > (Please don't trim the cc list.)
> >
> > On Sun, Jan 17, 2010 at 5:17 PM, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org> wrote:
> >> on which side of the merge? linus or drm?
> >> i.e. it is to be expected to be before the merge, (but on the drm side)
> >> so don't get confused... or did i misunderstood the situation?
> >
> > Like I said, don't read too much into the results but the current
> > situation looks like the regression happened _after_ 2.6.32 but before
> > any of the DRM code was merged to 2.6.33-rc1. I don't think that makes
> > much sense which is why I'm back to testing 2.6.32 more to see if the
> > bug is there already but just harder to trigger for whatever reason.
> 
> OK, confirmed. I can see the "flashing" bug with 2.6.32 as well. It
> just takes more time to trigger than in 2.6.33-rc1. I am going back to
> test 2.6.31 now.


Well, I've been using 2.6.32 day to day since it came out and never saw
this bug there. What do you do to trigger this bug?

-- 
MST
