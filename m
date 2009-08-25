From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk@iki.fi>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Wed, 26 Aug 2009 02:37:37 +0300
Message-ID: <11fae7c70908251637p2fe53296g1c2e65b9fca5e5a1@mail.gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	 <_yaHeGjHEzG.A.sS.WtGlKB@chimera>
Reply-To: q-funk@iki.fi
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932659AbZHYXhp@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=FOORRtuBnNvOaaMi/JKPbiXLlHLMgiZhW96xOkoPKT0=;
        b=IUUjbnTSOsPZysN9X8h/NLbpZ5jxBxP0sqWkxeeH8w0f1xBtWb62k3XxjBd/tbHtwA
         X8vTgjs5X25L0BNBN1YPGzIKqa/EVVGMngDzPe+HLBj+Jk3w9Ou4fp+Bpb8IFWdekAJ0
         xM4d6oJj8vtqZncGUkAhe8AmnCs5JsUkCs8TY=
In-Reply-To: <_yaHeGjHEzG.A.sS.WtGlKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>

Yes, it still is valid.

Screen dumps of the kernel panic were provided.  Can we get anyone to
investigate them now and find a fix? Thanks!

On Tue, Aug 25, 2009 at 11:34 PM, Rafael J. Wysocki<rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13941
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : x86 Geode issue
> Submitter =C2=A0 =C2=A0 =C2=A0 : Martin-=C3=89ric Racine <q-funk@iki.=
fi>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-03 12:58 (23 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124930434732481&w=3D4
>
>
>
