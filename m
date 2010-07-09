From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16256] tpm_tis breaks suspend/hibernate on kernels > 2.6.34
Date: Fri, 9 Jul 2010 22:55:01 +0200
Message-ID: <201007092255.01688.rjw@sisk.pl>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.QYC.1MmNMB@chimera> <201007090823.47530.helmut.schaa@googlemail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201007090823.47530.helmut.schaa-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Helmut Schaa <helmut.schaa-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Safford <safford-aZOuKsOsJu3MbYB6QlFGEg@public.gmane.org>, James Morris <jmorris-gx6/JNMH7DfYtjvyW6yDsg@public.gmane.org>, Rajiv Andrade <srajiv-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

On Friday, July 09, 2010, Helmut Schaa wrote:
> Am Freitag 09 Juli 2010 schrieb Rafael J. Wysocki:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.34.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16256
> > Subject		: tpm_tis breaks suspend/hibernate on kernels > 2.6.34
> > Submitter	: Helmut Schaa <helmut.schaa-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > Date		: 2010-06-20 11:15 (19 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/225a9be24d799aa16d543c31fb09f0c9ed1d9caa
> > Handled-By	: Helmut Schaa <helmut.schaa-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > Patch		: http://marc.info/?l=tpmdd-devel&m=127609160616162&w=2
> 
> Seems like the patch didn't make it into mainline yet. So I guess it should
> still be listed here.

Yes, thanks for the update.

Rafael
