From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38972] Kernel panic when syncing while cifs is mounted
Date: Sun, 10 Jul 2011 13:24:04 +0200
Message-ID: <201107101324.04871.rjw@sisk.pl>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera> <XNkIyhV6dgF.A.BVG.xBYGOB@chimera> <20110710072258.1ffbd52c@corrin.poochiereds.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110710072258.1ffbd52c-4QP7MXygkU+dMjc06nkz3ljfA9RmPOcC@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, farbing-S0/GAf8tV78@public.gmane.org

On Sunday, July 10, 2011, Jeff Layton wrote:
> On Sun, 10 Jul 2011 12:38:24 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38972
> > Subject		: Kernel panic when syncing while cifs is mounted
> > Submitter	:  <farbing-S0/GAf8tV78@public.gmane.org>
> > Date		: 2011-07-08 15:39 (3 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/dd8544661947ad6d8d87b3c9d4333bfa1583d1bc
> > Handled-By	: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > Patch		: https://bugzilla.kernel.org/attachment.cgi?id=65082
> > 
> > 
> 
> The patch is now in Steve French's tree. Just waiting on him to push it
> and some other fixes to Linus, hopefully before 3.0 ships.

Great, thanks!

Rafael
