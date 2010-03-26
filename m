From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong@gmail.com>
Subject: Re: [Bug #15555] 2.6.34-rc1: kernel BUG at mm/slab.c:2989!
Date: Fri, 26 Mar 2010 14:13:10 +0800
Message-ID: <2375c9f91003252313x69aae301h1290c81891f156d3@mail.gmail.com>
References: <M9dVcHY7TxH.A.2GC.ZBopLB@chimera>
	 <3Qs6IGJaRe.A.GfC.oBopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:received:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=aVneSjxCgPraoS8UO+/Bw+R+uIqmWU8sGoTVPmfDlk0=;
        b=RyeY7fyf/wFNvSddpAYtj5AxgCj2sue4engi9U3Yj2hWT1KAQx+W519uBHWOmNlBWG
         WX14EF+C/SGSpX56Xe2ITdeNlCUttO1dcTLohnM77LAblN4LrXdDrZqMn5lsAAojF52G
         cxbwbiXu1Xm0OXjs9kwNiBR2jxlnfi+zo1a5A=
In-Reply-To: <3Qs6IGJaRe.A.GfC.oBopLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

On Mon, Mar 22, 2010 at 4:13 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.33. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15555
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 2.6.34-rc1: kernel BUG at mm/sl=
ab.c:2989!
> Submitter =C2=A0 =C2=A0 =C2=A0 : Am=C3=A9rico Wang <xiyou.wangcong@gm=
ail.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-03-10 8:29 (12 d=
ays old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <2375c9f91003100029q7d64bbf7xce15eee=
97f7e2190@mail.gmail.com>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126820979017089&w=3D2
>

I can't reproduce this bug any more.
