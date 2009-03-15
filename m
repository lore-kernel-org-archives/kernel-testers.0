From: Jeff Chua <jeff.chua.linux@gmail.com>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Sun, 15 Mar 2009 11:06:41 +0800
Message-ID: <b6a2187b0903142006u546fad9eme66f9ea7b464b81f@mail.gmail.com>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	 <b6a2187b0903141958u9dae0fdk1f44b387108b99e4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=NZSx1ifydaQ9jWeW/9L8JEIxh8EtCN44TJuriGwTr2Y=;
        b=EXLlZJiG8GmrB4bhx6lXF2v87pHVtDgNjWYwsHIvBGpbr1uD3C0wW9Xhs5YnGFKCaN
         iu8Qi8sXLx0ojbH2vBJaA6OBCOKTyHBdr85ipgdUj8dYu4SCNcRhoJxFHZIGqsTEcILw
         /wdToX/Taf3b+NB/oepvqYFpb3NZeUoCtn6/I=
In-Reply-To: <b6a2187b0903141958u9dae0fdk1f44b387108b99e4@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>

On Sun, Mar 15, 2009 at 10:58 AM, Jeff Chua <jeff.chua.linux@gmail.com>=
 wrote:
> On Sun, Mar 15, 2009 at 3:01 AM, Rafael J. Wysocki <rjw@sisk.pl> wrot=
e:
>> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
12414
>> Subject =A0 =A0 =A0 =A0 : iwl4965 cannot use "ap auto" on latest 2.6=
=2E28/29?
>> Submitter =A0 =A0 =A0 : Jeff Chua <jeff.chua.linux@gmail.com>
>> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-01-05 4:13 (69 days old)
>> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12311=
2882127823&w=3D4
>
> Still not working in linux-2.6.29-rc8. Broken after the commit below.
> There were many changes to wireless after this commit, and simply
> reverting this commit will break compiling.
>
> Jeff.
>
>
>
> commit 41bb73eeac5ff5fb217257ba33b654747b3abf11
> Author: Johannes Berg <johannes@sipsolutions.net>
> Date: =A0 Wed Oct 29 01:09:37 2008 +0100
>
> =A0 =A0mac80211: remove SSID driver code
>

The commit below is causing problem with associating with the hidden AP=
 as well.

Thanks,
Jeff.


71c11fb57b924c160297ccd9e1761db598d00ac2 is first bad commit
commit 71c11fb57b924c160297ccd9e1761db598d00ac2
Author: Johannes Berg <johannes@sipsolutions.net>
Date:   Tue Oct 28 18:29:48 2008 +0100

    b43/legacy: remove SSID code

    The SSID programmed into the device is used by the ucode only
    to reply to probe requests, a functionality we disable anyway
    because it doesn't fit with the mac80211/hostapd programming
    model. Therefore, it isn't useful to program the SSID into
    device.

    Signed-off-by: Johannes Berg <johannes@sipsolutions.net>
    Signed-off-by: John W. Linville <linville@tuxdriver.com>

:040000 040000 18109a6ea13da3cd13bfadd625617894c9f91b50
fc2ca13f0efcd9e51403b5b55ed730e2457a29c0 M      drivers
