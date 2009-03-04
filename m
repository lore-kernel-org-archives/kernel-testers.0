From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Thu, 5 Mar 2009 01:32:24 +0200
Message-ID: <20090304233224.GA7023@google.com>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera> <SLCXkuHtxAO.A.LtE.VWarJB@chimera> <8f53421d0903031419m493b88bbifa911323279f4f0b@mail.gmail.com> <200903032342.36851.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=n/pRLkyYIY7uJGnB9d6bDRPeJmC6FeUJCneGn2Dmycg=;
        b=KmLd0H1i81c9brgknK98ZwqVXmDe9dJviwhKwxuoK1q8imhyOL18wAd26pPbwNBAoA
         0kVFzdHVNKT8i0DVSY8TeRTISvm/G6xLYTz0P4jfJzzdWc5hl9ZPsl1Z7tnysqDyBOk+
         z1xz28S64gGBSbMVrtuGgkDUiHTobRbU6HqeA=
Content-Disposition: inline
In-Reply-To: <200903032342.36851.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Mar 03, 2009 at 11:42:36PM +0100, Rafael J. Wysocki wrote:
> On Tuesday 03 March 2009, Michael S. Tsirkin wrote:
> > On Tue, Mar 3, 2009 at 9:25 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12574
> > > Subject         : possible circular locking dependency detected
> > > Submitter       : Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Date            : 2009-01-29 11:35 (34 days old)
> > > References      : http://lkml.org/lkml/2009/2/9/205
> > >
> > >
> > >
> > 
> > I don't seem to observe this warning in v2.6.29-rc6 anymore.
> 
> OK, I'm going to close it, then.

Spoke too soon.
I see this again on 2.6.29-rc7.

