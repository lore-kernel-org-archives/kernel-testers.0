From: Ming Lei <tom.leiming@gmail.com>
Subject: Re: [Bug #13245] possible circular locking dependency detected
Date: Sun, 17 May 2009 11:22:48 +0800
Message-ID: <d82e647a0905162022k7be627f1s933a84640562f749@mail.gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
	 <385Pu-agh7M.A.nFB.5YzDKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754332AbZEQDXB@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=U4s8nGouzM2jdmuy5SErbUMT3Yktzfb6g7NXEx0/rf8=;
        b=Hk8dg9gOXU7DFs2TB44rt0LeLVGekhX16WoprMQ5MK9U+uVlFhDf1TmqNuOzz0jQ2P
         m7DP94mjW0tQ9PsoUm9/QG9Rb+ZPXC1WzOV21rTShJA5+67WVdp7sNOrfjwM//PiBcjL
         QI4mmIuey6j58ZCP4EQ5f26GHlJ5VFgAIEcR4=
In-Reply-To: <385Pu-agh7M.A.nFB.5YzDKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Miles Lane <miles.lane@gmail.com>

I also can reproduce it on 2.6.30-rc5-next-20090515.

2009/5/17 Rafael J. Wysocki <rjw@sisk.pl>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.29. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13245
> Subject =A0 =A0 =A0 =A0 : possible circular locking dependency detect=
ed
> Submitter =A0 =A0 =A0 : Miles Lane <miles.lane@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-05-04 16:56 (13 days old)
>

--=20
Lei Ming
