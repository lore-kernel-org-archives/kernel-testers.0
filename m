From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sun, 17 Jan 2010 10:27:31 +0200
Message-ID: <20100117082730.GA21619@redhat.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=hjrZ6uwpgNtzh3XAj/BcMB6koN8nmVB1HQSqoVhljkc=;
        b=UnWnEbcVyrLzz1O2diWopzWVEK3PCgH2oLEKfzbE+zB4g8SQmtM75CY2rSgDnEEatf
         RmuBAL66isjWcGzAm+hCfDd0GiClNkZAblT43VS0VnqXAQjcSVE6X5YvXbmHGivhe9cs
         MtK01lx0gRyWInw6QTA20//6yA+vgak7I/n1M=
Content-Disposition: inline
In-Reply-To: <201001162257.16277.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY@public.gmane.org>

On Sat, Jan 16, 2010 at 10:57:16PM +0100, Rafael J. Wysocki wrote:
> On Saturday 16 January 2010, m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org wrote:
> > On Tue, Dec 29, 2009 at 04:05:30PM +0100, Rafael J. Wysocki wrote:
> > > [NOTES:
> > >  * There you go, another round of tracking regressions.  It's not too bad at
> > >    the moment, as far as the regressions from 2.6.32 are concerned, but we have
> > >    quite a few -stable regressions, apparently in the DRI area.
> > 
> > I have another one there :)
> > 
> > Immediately upon startup, screen is flickering (becomes
> > lighter and darker again). The problem occurs with kernels
> > 2.6.33-rc1 to 2.6.33-rc4, but not with kernel 2.6.32 and below.
> 
> We've already had several reports like this already.
> 
> Care to review the bugs linked to http://bugzilla.kernel.org/show_bug.cgi?id=14885
> and check if none of them matches the problem you describe?
> 
> Rafael

Well, not obviously. I will try latest git as Linus suggested.

-- 
MST
