From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15127] Bluetooth: sleeping function called from invalid context
Date: Tue, 2 Feb 2010 21:52:33 +0100
Message-ID: <201002022152.33465.rjw@sisk.pl>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.lME.FFiZLB@chimera> <1264986406.31341.5.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1264986406.31341.5.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>, Luiz Augusto von Dentz <luiz.dentz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 01 February 2010, Marcel Holtmann wrote:
> Hi Rafael,
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
> > Subject		: Bluetooth: sleeping function called from invalid context
> > Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
> > Date		: 2010-01-12 9:19 (20 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=9e726b17422bade75fba94e625cd35fd1353e682
> > References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4
> 
> you have an outdated email from Luiz and I change it to the right one
> now.

Thanks.  Unfortunately the address is from a commit sign-off and the script
picks it up automatically, so I can't really help it (well, I'd have to
remember to edit this particular message manually each time before posting it,
but I tend to forget).

The entry has been updated with a link to your patch.

Rafael
