From: Sid Boyce <sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
Subject: Re: [Bug #15144] HDA Intel Audio hang on boot
Date: Wed, 03 Feb 2010 02:37:05 +0000
Message-ID: <4B68E151.9030505@blueyonder.co.uk>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <4B6635F1.8060909@blueyonder.co.uk> <s5h3a1lh2wr.wl%tiwai@suse.de> <201002022140.06721.rjw@sisk.pl>
Reply-To: sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201002022140.06721.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 02/02/10 20:40, Rafael J. Wysocki wrote:
> On Monday 01 February 2010, Takashi Iwai wrote:
>> At Mon, 01 Feb 2010 02:01:21 +0000,
>> Sid Boyce wrote:
>>>
>>> On 01/02/10 00:22, Rafael J. Wysocki wrote:
>>>> This message has been generated automatically as a part of a report
>>>> of recent regressions.
>>>>
>>>> The following bug entry is on the current list of known regressions
>>>> from 2.6.32.  Please verify if it still should be listed and let me know
>>>> (either way).
>>>>
>>>>
>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15144
>>>> Subject		: HDA Intel Audio hang on boot
>>>> Submitter	: Sid Boyce <sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
>>>> Date		: 2010-01-15 1:24 (17 days old)
>>>> References	: http://marc.info/?l=linux-kernel&m=126351866722507&w=4
>>>>
>>>>
>>>>
>>>
>>> Still not fixed in 2.6.33-rc6. Takashi wrote that the fix was scheduled
>>> for 2.6.33-rc6, but it did not appear.
>>
>> It just slipped from rc6 due to my busy load.
>> The pull request was sent yesterday.
> 
> Linus has already merged it, so I've closed the bug.
> 
> Rafael
> 

I added the line to hda_intel.c in 2.6.33-rc6 as I had oopses in
2.6.33-rc6-git1 that I haven't yet captured.
SND_PCI_QUIRK(0x1043, 0x829c, "ASUS", 0), /* nvidia */
The problem was still there. I shall have a further look later today.
Regards
Sid.
-- 
Sid Boyce ... Hamradio License G3VBV, Licensed Private Pilot
Emeritus IBM/Amdahl Mainframes and Sun/Fujitsu Servers Tech Support
Specialist, Cricket Coach
Microsoft Windows Free Zone - Linux used for all Computing Tasks
