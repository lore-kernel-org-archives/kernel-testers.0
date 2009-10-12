From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 11:53:54 -0700
Message-ID: <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
Mime-Version: 1.0 (iPhone Mail 7C144)
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932973AbZJLSyl@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:references:message-id:from:to
         :in-reply-to:content-type:content-transfer-encoding:x-mailer
         :mime-version:subject:date:cc;
        bh=nUJH0MNm0rus24Z5B7bBRt6aQ60/pnV3b4tCVNov+RU=;
        b=UCrJr6/jOCG5XWwzL6vyQesD5jhNLAUFM73P+aZtJwsMZzqCRl/cKirgi9oyczT/P+
         WKqpSckr33PvZi6OQFSuyemL+/0z+p7sioed73hzAw2hQwBw2zGA7E8UambWPgxv4S+J
         cHHkEOEQ8x379JC6+ivG2GtTM0HcX0oMQNoBM=
In-Reply-To: <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed	delsp=yes"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, "=?utf-8?Q? Fr=C3=A9d=C3=A9ric_L._W._Meunier ?=" <fredlwm@gmail.com>, Linus Torvalds <torvalds@linux-foundation.org>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

Not sure where this stands. Right now all three machines I have seem =20
to be having no issues with the kayboard
(xserver 1.6.*) I can go and build the latest xserver(1.7) to see if I =
=20
hit something.

justin P. Mattock



On Oct 11, 2009, at 4:01 PM, "Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still =20
> should
> be listed and let me know (either way).
>
>
> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=3D14388
> Subject        : keyboard under X with 2.6.31
> Submitter    : Fr=C3=A9d=C3=A9ric L. W. Meunier <fredlwm@gmail.com>
> Date        : 2009-10-07 20:19 (5 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3De043e42bdb66885b3ac10d27a01ccb9972e2b0a3
> References    : http://marc.info/?l=3Dlinux-kernel&m=3D12549475322821=
7&w=3D4
>
>
