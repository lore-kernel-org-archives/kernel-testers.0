From: Bret Towe <magnade@gmail.com>
Subject: Re: [Bug #15309] reiserfs issue with 2.6.32.8
Date: Sun, 21 Feb 2010 18:18:17 -0800
Message-ID: <dda83e781002211818s1b654266m9763a4d20e78ee3b@mail.gmail.com>
References: <4u4d-2M3yXH.A.XW.XqagLB@chimera> <wj3ZQZlk_KB.A.Ye.iqagLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=WwyCptr/8tmNygBazll5bt4gwwkXh66snFLoSyppJFw=;
        b=LOB9LoxxhuS2yLT00Zx5brPJRkbEktfJoHZ2W6iDfzLTfm0oY4ZTbs3jJzmXNLgKwb
         CC7gqC+AzuqdBKuKTApT6jG7c5SvTzhZ/gMJ5pU9F978KxLRX+io57ix3x+kBqJYjsOl
         OMBaLZHfHMFN9bQZr1FLq48TaRw1tR42Pc92k=
In-Reply-To: <wj3ZQZlk_KB.A.Ye.iqagLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

On Sun, Feb 21, 2010 at 1:42 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15309
> Subject =A0 =A0 =A0 =A0 : reiserfs issue with 2.6.32.8
> Submitter =A0 =A0 =A0 : Bret Towe <magnade@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-02-14 18:23 (8 days old)
> Message-ID =A0 =A0 =A0: <dda83e781002141023t2abe95b8w83f59d6f411f68a2=
@mail.gmail.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126617=
185512707&w=3D4
>
>

I'm still doing some bisecting trying to narrow down the problem
