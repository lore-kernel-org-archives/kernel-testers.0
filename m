From: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>
Subject: Re: [Bug #13337] [post 2.6.29 regression] hang during suspend of b44/b43 modules
Date: Sat, 11 Jul 2009 16:07:10 +0200
Message-ID: <87prc78ga9.fsf@scholz.fias.uni-frankfurt.de>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
	<87k52izvd9.fsf@scholz.fias.uni-frankfurt.de>
	<87y6qxx50z.fsf@scholz.fias.uni-frankfurt.de>
	<200907092203.10294.rjw@sisk.pl>
	<1247171295.1905.5.camel@johannes.local>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1247171295.1905.5.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org> (Johannes Berg's message
	of "Thu, 09 Jul 2009 22:28:15 +0200")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tomas Janousek <tomi-YoqI/XImC7s@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> writes:
> On Thu, 2009-07-09 at 22:03 +0200, Rafael J. Wysocki wrote:
>> On Thursday 09 July 2009, Jan Scholz wrote:
>> > Hi,
>> > 
>> > I have just checked this on v2.6.31-rc1 and v2.6.31-rc2-214-g34f2547
>> > (I wanted to test this on v2.6.31-rc2 as well, but there I had other
>> > suspend-issues that are fixed in todays v2.6.31-rc2-214-g34f2547)
>> > 
>> > For both v2.6.31-rc1 and v2.6.31-rc2-214-g34f2547 suspend to ram fails
>> > with the test procedure described below, but it works fine when I revert
>> > commit 5bb644a0fd25a5e083ecbfaa92a211db99aa6ef7
>> >  "mac80211: cancel/restart all timers across suspend/resume"
>> 
>> Thanks for the update.
>> 
>> Johannes, do you have any idea what can go wrong here?
>
> Not really, no. __ieee80211_suspend isn't holding any locks that the
> cancel_work_sync() calls could require or so afaict...
>
> Jan, can you run with console_suspend=0 (or whatever it is now, Rafael
> will correct me if I'm wrong) that should work on your platform, and put
> a bunch of printk calls into __ieee80211_suspend in net/mac80211/pm.c to
> see where in there it's hanging?

Did that, seems like it hangs in
  drv_remove_interface(local, &conf);

Jan
