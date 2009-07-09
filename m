From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13337] [post 2.6.29 regression] hang during suspend of b44/b43 modules
Date: Thu, 9 Jul 2009 22:03:09 +0200
Message-ID: <200907092203.10294.rjw@sisk.pl>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <87k52izvd9.fsf@scholz.fias.uni-frankfurt.de> <87y6qxx50z.fsf@scholz.fias.uni-frankfurt.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87y6qxx50z.fsf-X87fCqEI3snt2/fatF9ZgSk+o5UQzIjPIRYYPiSvRdM@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jan Scholz <scholz-wOpdxP1gw6Cc+IqHO83+wjjhTm2NLCe8@public.gmane.org>, johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tomas Janousek <tomi-YoqI/XImC7s@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Thursday 09 July 2009, Jan Scholz wrote:
> Hi,
> 
> I have just checked this on v2.6.31-rc1 and v2.6.31-rc2-214-g34f2547
> (I wanted to test this on v2.6.31-rc2 as well, but there I had other
> suspend-issues that are fixed in todays v2.6.31-rc2-214-g34f2547)
> 
> For both v2.6.31-rc1 and v2.6.31-rc2-214-g34f2547 suspend to ram fails
> with the test procedure described below, but it works fine when I revert
> commit 5bb644a0fd25a5e083ecbfaa92a211db99aa6ef7
>  "mac80211: cancel/restart all timers across suspend/resume"

Thanks for the update.

Johannes, do you have any idea what can go wrong here?

Rafael
