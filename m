From: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Wed, 8 Jul 2009 12:50:22 +1000
Message-ID: <21d7e9970907071950n27979df6j44444edd8528a598@mail.gmail.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <dWkuWjWDsSB.A.6tE.d0oUKB@chimera>
	 <200907080232.04551.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=MDl4GTcofzqhty9ggNdN+LxHpOh2nxVgp4r7UWXcggc=;
        b=Vv7hNthf5kOR7bxUrRDqmJGuWU2eCEqgV1sgItamnGUeR4gBGlhZ7A28gY4T7c0mlA
         DPAQ8dfmeTZqauVhU3V5ZNWaC6Z40q9rxdW/xFDecIGmIS7WlZyrGt1b4iCIofE7mPS1
         fygSwBXY8sjYqaDzI2Yk71U/Uvzh8Lw3MDz7c=
In-Reply-To: <200907080232.04551.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Jul 8, 2009 at 10:32 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> On Tuesday 07 July 2009, Rafael J. Wysocki wrote:
>> The following bug entry is on the current list of known regressions
>> from 2.6.30. =A0Please verify if it still should be listed and let m=
e
>> know (either way).
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D136=
67
>> Subject =A0 =A0 =A0 : drm: display arifacts when X.Org is stopped
>> Submitter =A0 =A0 : Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-06-27 18:52 (10 days old)
>> References =A0 =A0: http://lkml.org/lkml/2009/6/27/105
>
> Problem is still there with -rc2. Dave said he'd try to reproduce, bu=
t
> I've not heard back from him yet.
>

I have my 2510p, I just have to get a PSU to run it, at least I hope it=
s just
the PSU.

Don't suppose you have a 32-bit install you could also test with?

Hopefully I can reproduce it on my box locally, otherwise its really
messy dealing with 2 drivers smashing on the same hw.

btw you get any wierd text mode issues without vesafb?

Dave.
