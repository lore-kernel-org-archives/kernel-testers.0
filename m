From: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14887] suspend doesn't work on X200s
Date: Wed, 30 Dec 2009 22:44:08 +0100
Message-ID: <20091230214408.GS4489@kernel.dk>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.Zg.inhOLB@chimera> <20091230111745.GC4489@kernel.dk> <alpine.DEB.1.10.0912301232570.27231@uplift.swm.pp.se>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.1.10.0912301232570.27231-AfpWgHsPmfL18RhVG2q44w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Abrahamsson <swmike-uVNFFiCRr/OzQB+pC5nmwQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>

On Wed, Dec 30 2009, Mikael Abrahamsson wrote:
> On Wed, 30 Dec 2009, Jens Axboe wrote:
>
>> Works fine for me on an x200s. The only issue I seem to have is that  
>> sometimes it suspends immediately upon resume again, presumably the lid 
>> close event is re-triggered (or something to that extent). Apart from  
>> that, 2.6.32 and current -git works fine for me.
>
> There is an issue in 2.6.31 where it will panic (at least that's what I  
> think it does, please see more details in  
> <https://bugs.launchpad.net/bugs/473876>) when you have it plugged in,  
> suspend, un-plug the power cable, and then resume it.

I do that all the time, not a problem here. Tried it just now and it
worked, but did the "I'll suspend immediately again". Pressing fn makes
it wake up, though.

>
> According to 
> <https://bugs.launchpad.net/ubuntu/+source/linux/+bug/467877> it has 
> something to do with "event_when_closed_battery", I haven't tested it yet 
> though, neither with 2.6.31 nor 2.6.32. Could be beneficial for more 
> people to test though.
>
> -- 
> Mikael Abrahamsson    email: swmike-uVNFFiCRr/OzQB+pC5nmwQ@public.gmane.org

-- 
Jens Axboe
