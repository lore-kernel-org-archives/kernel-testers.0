From: Volker Armin Hemmann <volkerarmin-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14264] ehci problem - mouse dead on scroll
Date: Tue, 13 Oct 2009 17:55:20 +0200
Message-ID: <200910131755.20166.volkerarmin@googlemail.com>
References: <Pine.LNX.4.44L0.0910131132150.3169-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=CoIIvh+wck8IVbHlhezvKrou1XmMnfBrw+AIH7WEqzw=;
        b=jZe1xMNY0EH8lNkxZ0N2UX29twg/n62R8gmGjfdNuxakzSFeb3vfESSBLJPpYEF70Q
         uOKLUVLKICntre5liRw9lV0bS1o4kBQqUUGX/bCrrBRi+iXnuM83ZEYQbgnnZXVjowfw
         sc+wDiUINSGO8ocO7nQem7/3Fx/PGWWiuiQnY=
In-Reply-To: <Pine.LNX.4.44L0.0910131132150.3169-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>

On Dienstag 13 Oktober 2009, Alan Stern wrote:
> On Mon, 12 Oct 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14264
> > Subject		: ehci problem - mouse dead on scroll
> > Submitter	: Volker Armin Hemmann <volkerarmin-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > Date		: 2009-09-12 7:46 (30 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125274202707893&w=4
> > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> 
> This is probably a hardware problem in the mouse or the Logitech
> receiver.  It affected both EHCI and OHCI, and it was not reproducible
> with a different mouse.  But Volker hasn't reported any results since
> the end of September.
> 
> Volker, another good test would be to try plugging your mouse into
> someone else's computer.
> 
> Alan Stern
> 

yeah, that is a problem - I am pretty 'alone' in regard of linux users. I know 
very few, and they have either only servers without X or run some stable 
distributions with old kernels.

It is probably hardware related. I have tried two other mice and both were ok. 
Both had a lesser resolution and were slower, but that shouldn't make any 
difference.

I wanted to try some of the 32-rcs to see if they make any difference but the 
reiser4 for 2.6.31 patch does not result in a buildable kernel anymore, thanks 
to changes in writeback.h. So all I can say is:
2.6.31 is ok with the logitech, using ehci+hub+Translator settings and that is 
good enough for me.
every other mouse is ok with either ohci or attached to the hub.
