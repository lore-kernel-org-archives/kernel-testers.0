From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13069] regression in 2.6.29-git3 on SH/Dreamcast
Date: Sun, 17 May 2009 11:12:35 +0300
Message-ID: <84144f020905170112l789e9ec0p2bf6bb71879579e1@mail.gmail.com>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	 <nY3-4PrO6XH.A.QZB.ow85JB@chimera>
	 <1240594638.4777.1.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=a1iuinWg2Oww1popA+Y3Q9wDWSMGqIxvCwhFcy1A9X0=;
        b=lcjGyqJhmXkcNwk+a5Ymek2rcEvqvOc4KkidMVvdSaDERJ+pQdIt/644xmF+wV7A6z
         RYjwdEalfo44nXRKAH9Rs9+fnjKqlfrzzX72ArpLnyJ0n03d61cRWCDRx2XQhrUUKkVw
         kdXHtl/z1sKJkEeFb/srs67y1gbsvvOyO47AU=
In-Reply-To: <1240594638.4777.1.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Adrian McMenamin <adrian-TSF8l6Tg6ad3zSCowOiEO2GXanvQGlWp@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Manuel Lauss <mano-nEyxjcs6f3Vin2gBucwGBecsttgLyre6@public.gmane.org>

On Thu, 2009-04-16 at 23:45 +0200, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D130=
69
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : regression in 2.6.29-git3 on S=
H/Dreamcast
>> Submitter =A0 =A0 : Adrian McMenamin <adrian-TSF8l6Tg6afpT6hvJLqO3fkIJyZcjF/4@public.gmane.org=
o>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-03-29 19:04 (19 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D123835353=
115372&w=3D4

On Fri, Apr 24, 2009 at 8:37 PM, Adrian McMenamin
<adrian-TSF8l6Tg6ad3zSCowOiEO2GXanvQGlWp@public.gmane.org> wrote:
> At this point it *looks* as though it was simply a question of
> insufficient memory to boot, but I think it needs further testing.
> Nobody else seems to have picked it up though.

Yeah, it looks like there's not enough memory to boot. It could well
be that the kernel memory footprint got bigger but I don't think the
bisected commit is at fault here. Perhaps we should just close the
bug?
