From: Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>
Subject: Re: [Bug #28622] radeon video lockup
Date: Mon, 14 Feb 2011 14:30:30 -0500
Message-ID: <4D5982D6.2060102@tmr.com>
References: <9Pzlq5PlEtH.A.DU.efxVNB@chimera> <1z1FRILH7uF.A.ib.rfxVNB@chimera> <alpine.DEB.2.00.1102121610460.4146@asgard.lang.hm>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1102121610460.4146-Z4YwzcCRHZnr5h6Zg1Auow@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Kernel mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

david-gFPdbfVZQbY@public.gmane.org wrote:
> On Sun, 13 Feb 2011, Rafael J. Wysocki wrote:
>
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.36 and 2.6.37.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.36 and 2.6.37. Please verify if it still should
>> be listed and let the tracking team know (either way).
>>
>>
>> Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=28622
>> Subject : radeon video lockup
>> Submitter : Daniel Poelzleithner <bugzilla.kernel.org-j3Gp85GwYS0dnm+yROfE0A@public.gmane.org>
>> Date : 2011-02-08 17:48 (5 days old)
>
> hmm, I've occasionally been expericancing what sounds like a similar issue.
>
> the screen locks, it doesn't respond to the keyboard (but caps lock
> still works), frequently the mouse pointer still moves, but you can't
> click on anything.
>
> it ususally happens to me a few min after starting firefox (with 10-15
> windows holding a couple hundred tabs), so it could also be a firefox
> bug if it can capture the input and not release it.
>
> I've experianced this on my T61 laptop, and my work machine (Radeon
> X1300 series)
>
> I'm currently running ubuntu 10.10 which is 2.6.35-25, so if it is the
> same problem, it wasn't introduced between 2.6.36 and 2.6.37.
>
> like the OP of the bug report, this is not something that happens
> frequently, but I don't do much that stresses the video, so starting all
> these tabs is about as hard as I drive it.
>
> David Lang
There have been several recent reports of lockups, with nothing in the logs or 
nothing recoverable. I've seen some of these running the git3 kernel on a VM 
(Fedora 14) so it may not be related to the specific video card but to X in general.

I've had too little information to justify a proper bug report.

-- 
Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>
   "We have more to fear from the bungling of the incompetent than from
the machinations of the wicked."  - from Slashdot
