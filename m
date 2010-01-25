From: Manish Katiyar <mkatiyar@gmail.com>
Subject: Re: [Bug #15015] blank screen at random times in laptop when sitting 
	idle
Date: Mon, 25 Jan 2010 20:14:28 +0530
Message-ID: <ea11fea31001250644i78a9e4d9q725eb04f6a7da164@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.70H.SZMXLB@chimera> 
	<84144f021001250610q3160ea06tac5f645b84285388@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753775Ab0AYOxJ@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=zDD9wtXnqwXT/hloO1e6BNKzZc+atVhduJwCl/gvccM=;
        b=Fi4X4BtZJ4abnFH32u97WpdFP2K5kpC2iSBM3cIsFobTt4BUcROVSqdx5MNjwKOckC
         dyVk8b1IA3O0ZQxrkgpQhbPsRSKyDKHIf4lRWLv906mvxnPnggRXVHxKPRiTi9dDXEID
         fvvGBB8B0OUTYj3x2XCHeC4c4YwtTBgXwS3SU=
In-Reply-To: <84144f021001250610q3160ea06tac5f645b84285388@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Pekka Enberg <penberg@cs.helsinki.fi>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jithin Emmanuel <jithin1987@gmail.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>

On Mon, Jan 25, 2010 at 7:40 PM, Pekka Enberg <penberg@cs.helsinki.fi> =
wrote:
> On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw@sisk.pl> wro=
te:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.31 and 2.6.32.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still s=
hould
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15015
>> Subject =A0 =A0 =A0 =A0 : blank screen at random times in laptop whe=
n sitting idle
>> Submitter =A0 =A0 =A0 : Jithin Emmanuel <jithin1987@gmail.com>
>> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-09 16:48 (16 days old)
>
> FWIW, I might have seen this on my Macbook as well (screen went blank
> but I didn't check the logs). I think I managed to unblank the screen
> by hitting the "increase brightness" key. But as you say, the bug
> doesn't trigger very often and I have no idea how to reproduce it at
> will.

I have seen it too on my lenovo T60 with 2.6.32.2. It happens to me
frequently and has become famous as "coffee bug" in my colleagues.
Every morning when I goto office and after putting my laptop on
docking station go for coffee. Once I come back the laptop screen goes
blank, but haven't been able to manage how to get screen back. Only
option is hard reboot. This happens almost every once in two three
days.

Let me know what information/logs I can provide to help debug this.
BTW I normally suspend my laptop at home and then resume it in office
(if that matters).



>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Pekka
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-test=
ers" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
>



--=20
Thanks -
Manish
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[$\*.^ -- I miss being one of them
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
