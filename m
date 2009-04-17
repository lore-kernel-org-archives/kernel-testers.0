From: Ming Lei <tom.leiming@gmail.com>
Subject: Re: 2.6.30-rc2-git2: Reported regressions from 2.6.29
Date: Fri, 17 Apr 2009 09:37:10 +0800
Message-ID: <d82e647a0904161837w6b6fb652la0da05f9061e95dc@mail.gmail.com>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-scsi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=0J3UJOVQk7pDulFshicO43cOx251xeNxC9LPEtMX/IY=;
        b=ER8qy57rOH29pyidOyVD4ZUXFjo7l6VWzVBtn/v3+2FJ5g6xjZui5b2Xy+31689Sh7
         iZXztOcJPGATLKWIylo9jRnQMyTNd2wmLtZeAhrMcylvja+tkOpsnDTytlJtihEn/RN6
         N3GaYwwlI7E9TIM288veKe90yluCvS4XL5Zfo=
In-Reply-To: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
Sender: linux-scsi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>, Linux PM List <linux-pm@lists.linux-foundation.org>, Linux SCSI List <linux-scsi@vger.kernel.org>, video4linux-list@redhat.com, laurent.pinchart@skynet.be, mchehab@infradead.org

2009/4/17 Rafael J. Wysocki <rjw@sisk.pl>:
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13125
> Subject =A0 =A0 =A0 =A0 : active uvcvideo breaks over suspend
> Submitter =A0 =A0 =A0 : Alan Jenkins <alan-jenkins@tuffmail.co.uk>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-15 10:12 (2 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D123979=
009508840&w=3D4
>

It is a bug in resume path of uvcvideo driver, and I have sent a patch
to laurent.pinchart@skynet.be,
mchehab@infradead.org  and video4linux-list@redhat.com to fix it, but
still no echo from them.

The patch title is V4L/DVB:usbvideo:fix uvc resume failed.

Rafael J.
        If you would like to apply it ,I can resend to you.  Thanks!

--=20
Lei Ming
--
To unsubscribe from this list: send the line "unsubscribe linux-scsi" i=
n
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
