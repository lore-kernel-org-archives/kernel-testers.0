From: Randy Dunlap <rdunlap-/UHa2rfvQTnk1uMJSBkQmQ@public.gmane.org>
Subject: Re: Newbie: howto get mm tree up to date using quilt
Date: Thu, 25 Jun 2009 22:10:54 -0700
Message-ID: <4A44585E.20902@xenotime.net>
References: <1faf47660906252156m425de064p66f60ac942402420@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1faf47660906252156m425de064p66f60ac942402420-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Charles 'Mack' Rhinelander <mrhinelander-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Janitors List <kernel-janitors-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Charles 'Mack' Rhinelander wrote:
> I'm running 2.6.28-rc2-mm1, the latest mm tree. I'd like to patch it
> so it's up to date, and try using the daily snapshots.

Daily snapshots of what?  mm-tree doesn't have daily snapshots.
Andrew Morton hasn't released a -mm patchset lately.  He's been making
"mmotm" (mm of the moment) releases/announcements.

> Can somebody please tell me the steps to do this? I've diligently read
> "The Kernel Tester's Guide" and done many google searches, and I've
> got quilt, but I can't tell how these instructions apply to the
> contents of /pub/linux/kernel/people/akpm/patches/2.6/2.6.28-rc2/2.6.28-rc2-mm1
> For example, there's no "series" file, it's called "patch-series"

Forget about 2.6.28-rc2-mm1.  Start using the -mmotm patches that are found
in http://userweb.kernel.org/~akpm/mmotm/

> Am I supposed to change the name?  And what all are "broken-out,"
> "hot-fixes," "patch-list....?"

One easy way is to download these scripts from
http://www.xenotime.net/linux/scripts/ :

get-mmotm
get-base-and-mmotm
grab_kernel

get-base-and-mmotm calls the other 2 scripts and downloads the base kernel
version that mmotm applies to, then downloads mmotm, then applies the mmotm
patchset to the base tree.


-- 
~Randy
LPC 2009, Sept. 23-25, Portland, Oregon
http://linuxplumbersconf.org/2009/
