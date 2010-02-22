From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong@gmail.com>
Subject: Re: [Bug #15142] sysfs-related lockdep warning in __blkdev_get
Date: Mon, 22 Feb 2010 09:25:46 +0800
Message-ID: <2375c9f91002211725u699a4b49y8dcae9829a3d3659@mail.gmail.com>
References: <b_eAfX__uZL.A.lvE.HcagLB@chimera>
	 <ClJsQB_ZlxO.A.eNH.WeagLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=mKG55qer9wus/brKTLyO0gM5H14M4Vvv6Tv75gplVZ4=;
        b=OfOk0YD+YAWf9znmglMFx30y34bDkt+Yh5UTmrC3381sNYoACytd5sVzmbPEZxvGcQ
         zvMC2BH685KiQHKyk2DvKjKgekAw0wH35Zbe1PBTDMkjK3KztPnG2CANEL6YOHh8K5lr
         IpIufHltd3YEz4Ta44CQUjCJEW6X5pCjL7w/Y=
In-Reply-To: <ClJsQB_ZlxO.A.eNH.WeagLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Matti Aarnio <matti.aarnio--kernel-bugzilla@zmailer.org>, NeilBrown <neilb@suse.de>

On Mon, Feb 22, 2010 at 5:30 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15142
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : sysfs-related lockdep warning i=
n __blkdev_get
> Submitter =C2=A0 =C2=A0 =C2=A0 : Matti Aarnio <matti.aarnio--kernel-b=
ugzilla@zmailer.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-25 13:38 (28 =
days old)
>
>

This should be fixed by the patchset from Eric too. Here:

http://lkml.org/lkml/2010/2/11/329
