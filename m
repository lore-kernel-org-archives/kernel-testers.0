From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #42669] 3.3-rc1: compiling problems nvme , l2cap_sock , mc13892-regulator , and snd-pcsp don't work
Date: Fri, 24 Feb 2012 00:30:27 +0100
Message-ID: <201202240030.27270.rjw@sisk.pl>
References: <y44pDJ8xoDC.A.08E.h8rRPB@chimera> <qCQH7HfZS8E.A.FVG.M9rRPB@chimera> <20120223.181904.501214130038312055.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20120223.181904.501214130038312055.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org, w.landgraf-ow1r9FSYgO0@public.gmane.org

On Friday, February 24, 2012, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Thu, 23 Feb 2012 23:51:25 +0100 (CET)
> 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 3.2.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=42669
> > Subject		: 3.3-rc1: compiling problems  nvme , l2cap_sock , mc13892-regulator , and snd-pcsp don't work
> > Submitter	: werner <w.landgraf-ow1r9FSYgO0@public.gmane.org>
> > Date		: 2012-01-20 18:52 (35 days old)
> > Message-ID	: <web-682421181-zcyLqNHFQq3Ee+7He9zlJw@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=132708923719565&w=2
> 
> The l2cap_sock problem is fixed in the net GIT tree by commit:

Thanks, closed.

Rafael
