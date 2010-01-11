From: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14948] EHCI resume sysfs duplicates
Date: Mon, 11 Jan 2010 23:41:59 +0100
Message-ID: <20100111224159.GA9945@liondog.tnic>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
 <omZ8aBZReyD.A.1WH.ONlSLB@chimera>
 <20100111060541.GA19865@liondog.tnic>
 <201001112106.06787.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=r71ZRp9OJfIO7rUhjKsB0pLVOKdtPw8M8ODmCb1jADg=;
        b=x0D9eayUJXT2LRfxUlXRfwzQWGJsvnx67invp0IGAb8d/oGph+p3JUQzwEFRo8XBj4
         VFvj8G8aCyjCCVbW6L1zJBOTlKHY8aAfnv/pJIdcy52xxmrcFq/WNGuL9a1pxXDoKKAu
         wgVtysnc+/sTpc0KinyDw0rRi2oJKhfsDZ7WQ=
Content-Disposition: inline
In-Reply-To: <201001112106.06787.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Jan 11, 2010 at 09:06:06PM +0100, Rafael J. Wysocki wrote:
> On Monday 11 January 2010, Borislav Petkov wrote:
> > On Sun, Jan 10, 2010 at 11:32:55PM +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.32.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14948
> > > Subject		: EHCI resume sysfs duplicates
> > > Submitter	: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > > Date		: 2009-12-26 9:36 (16 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=126182020615709&w=4
> > 
> > Preliminary and tested fix is at LKML-Reference: <20100105220829.GA31569@xanatos>
> 
> Sorry, I don't know how to resolve that.

Sorry about that. One way to resolve it would be:

http://marc.info/?i=<LKML-Reference>, i.e.

http://marc.info/?i=20100105220829.GA31569@xanatos

for example, which should get rewritten to

http://marc.info/?l=linux-usb&m=126272933202894

I'm sure there are other ways though.

-- 
Regards/Gruss,
    Boris.
