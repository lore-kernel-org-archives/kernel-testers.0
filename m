From: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #13846] Possible regression in rt61pci driver
Date: Mon, 27 Jul 2009 10:27:01 +0100
Message-ID: <c6b1100b0907270227r4ab5a0b1q410160f92c94eae9@mail.gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.eMB.9GObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=xmI6ifTBTyMJpU0QRSWdmFZ7H3k+q6QaoogKhQK1eps=;
        b=A3eohRhctomXeLj8rvcha1c8OJGObs7JZpT5Du7LsjbK5tldeJNjswl+DPIUcvHDfW
         dNTFC6Flt5kd9PJtmXs9dZ2ci4kkgMckqpb5uObPWzxZ+FJznBwlQ4h567z/W2rz8YE/
         n5yzRm3lhTpHzM99ou9ldvYxGsMS4WkUFdFds=
In-Reply-To: <3zAHs5O6maO.A.eMB.9GObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/7/26 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>

This bug should remain open, although we are, I think, getting closer
to the cause, which seems to be related to some interaction between
the rt61 driver and mac80211 power saving.

>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13846
> Subject =A0 =A0 =A0 =A0 : Possible regression in rt61pci driver
> Submitter =A0 =A0 =A0 : Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-07-13 8:27 (14 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124747=
418828398&w=3D4
>
>
>

--=20
No, Sir; there is nothing which has yet been contrived by man, by which
so much happiness is produced as by a good tavern or inn - Doctor Samue=
l
Johnson
