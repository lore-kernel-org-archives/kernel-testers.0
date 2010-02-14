From: Sid Boyce <sboyce@blueyonder.co.uk>
Subject: Re: [Bug #15144] HDA Intel Audio hang on boot
Date: Sun, 14 Feb 2010 20:29:01 +0000
Message-ID: <4B785D0D.3070804@blueyonder.co.uk>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>	<d3IDKWHT5gE.A.MEC.a7hZLB@chimera>	<4B6635F1.8060909@blueyonder.co.uk> <s5h3a1lh2wr.wl%tiwai@suse.de>
Reply-To: sboyce@blueyonder.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <s5h3a1lh2wr.wl%tiwai@suse.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Takashi Iwai <tiwai@suse.de>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On 01/02/10 06:43, Takashi Iwai wrote:
> At Mon, 01 Feb 2010 02:01:21 +0000,
> Sid Boyce wrote:
>>
>> On 01/02/10 00:22, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.32.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15144
>>> Subject		: HDA Intel Audio hang on boot
>>> Submitter	: Sid Boyce <sboyce@blueyonder.co.uk>
>>> Date		: 2010-01-15 1:24 (17 days old)
>>> References	: http://marc.info/?l=linux-kernel&m=126351866722507&w=4
>>>
>>>
>>>
>>
>> Still not fixed in 2.6.33-rc6. Takashi wrote that the fix was scheduled
>> for 2.6.33-rc6, but it did not appear.
> 
> It just slipped from rc6 due to my busy load.
> The pull request was sent yesterday.
> 
> 
> Takashi
> 

Up to 2.6.33-rc8 still needs the work around in
/etc/modprobe.d/50-sound.conf, so the kernel blacklist fix does not work.

# less /etc/modprobe.d/50-sound.conf

options slots=snd-hda-intel
# 9LTX.vLXC8EvZgR7:MCP55 High Definition Audio
alias snd-card-0 snd-hda-intel
options snd-hda-intel enable_msi=0
Regards
Sid.
-- 
Sid Boyce ... Hamradio License G3VBV, Licensed Private Pilot
Emeritus IBM/Amdahl Mainframes and Sun/Fujitsu Servers Tech Support
Specialist, Cricket Coach
Microsoft Windows Free Zone - Linux used for all Computing Tasks
