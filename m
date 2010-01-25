From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: [Bug #15015] blank screen at random times in laptop when sitting 
	idle
Date: Mon, 25 Jan 2010 16:10:24 +0200
Message-ID: <84144f021001250610q3160ea06tac5f645b84285388@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A.70H.SZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752769Ab0AYOKb@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=o4X0ieJVmo+Ha4wlNE7PcySZ2h9yNPrGvSTZeB4XjkA=;
        b=emIDcDPZ9m/yeUNKRAwF5dQ0hKJDlFujxMflLJPKCFrpJc31ugsmAcqTzUtmLRjAvp
         UbfmnRVKDSYvh9VVOVWArBkjZsP+Bcup7v2HX0gI6IZSDY5Hu/G1cAT/wnziLTzr1dHt
         O6wWsaqtEApgFKHF0C0LyhYQnsYskbnM1l6Yw=
In-Reply-To: <q60Z28d_9yH.A.70H.SZMXLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jithin Emmanuel <jithin1987@gmail.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>

On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15015
> Subject =A0 =A0 =A0 =A0 : blank screen at random times in laptop when=
 sitting idle
> Submitter =A0 =A0 =A0 : Jithin Emmanuel <jithin1987@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-09 16:48 (16 days old)

=46WIW, I might have seen this on my Macbook as well (screen went blank
but I didn't check the logs). I think I managed to unblank the screen
by hitting the "increase brightness" key. But as you say, the bug
doesn't trigger very often and I have no idea how to reproduce it at
will.

                         Pekka
