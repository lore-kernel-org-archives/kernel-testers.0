From: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Subject: Re: [Bug #15127] Bluetooth: sleeping function called from invalid
 context
Date: Mon, 01 Feb 2010 11:14:17 -0800
Message-ID: <1265051657.31341.56.camel@localhost.localdomain>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	 <de962C6zBxL.A.lME.FFiZLB@chimera>
	 <1264986406.31341.5.camel@localhost.localdomain>
	 <4B6711E2.6010409@xenontk.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B6711E2.6010409-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Luiz Augusto von Dentz <luiz.dentz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi David,

> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.31 and 2.6.32.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> >> be listed and let me know (either way).
> >>
> >>
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
> >> Subject		: Bluetooth: sleeping function called from invalid context
> >> Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
> >> Date		: 2010-01-12 9:19 (20 days old)
> >> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=9e726b17422bade75fba94e625cd35fd1353e682
> >> References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4
> > 
> > you have an outdated email from Luiz and I change it to the right one
> > now.
> > 
> > I looked with him at the patch and I think this will fix it:
> > 
> > diff --git a/net/bluetooth/rfcomm/core.c b/net/bluetooth/rfcomm/core.c
> > index fc5ee32..2b50637 100644
> > --- a/net/bluetooth/rfcomm/core.c
> > +++ b/net/bluetooth/rfcomm/core.c
> > @@ -252,7 +252,6 @@ static void rfcomm_session_timeout(unsigned long
> > arg)
> >  	BT_DBG("session %p state %ld", s, s->state);
> >  
> >  	set_bit(RFCOMM_TIMED_OUT, &s->flags);
> > -	rfcomm_session_put(s);
> >  	rfcomm_schedule(RFCOMM_SCHED_TIMEO);
> >  }
> >  
> > @@ -1920,6 +1919,7 @@ static inline void rfcomm_process_sessions(void)
> >  		if (test_and_clear_bit(RFCOMM_TIMED_OUT, &s->flags)) {
> >  			s->state = BT_DISCONN;
> >  			rfcomm_send_disc(s, 0);
> > +			rfcomm_session_put(s);
> >  			continue;
> >  		}
> >  
> > We need some extra testing on this with the actual hardware we did the
> > patch for. So this will take at least a few days before we get our hands
> > on it.
>
> FWIW, your patch fixes the issue.

nice. So I can add a tested-by line to the final patch?

Just our of curiosity, which hardware did you test this with. We only
know about one headset that should cause this issue.

Regards

Marcel

