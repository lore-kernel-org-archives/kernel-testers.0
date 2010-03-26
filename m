From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15142] sysfs-related lockdep warning in __blkdev_get
Date: Fri, 26 Mar 2010 14:11:39 +0800
Message-ID: <2375c9f91003252311j24d0a13ekbe1484f0d789e392@mail.gmail.com>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	 <hTwaxgnIZ2O.A.J8F.wQopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:received:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=YZEHHE5sqasWb5z2sXNpiI6QWhVgCvOJUUHuIHtxeBE=;
        b=rHHNBwJlrfrblmTysrx7TNj3aCSCWrR8un3Czpuo1I5NORO+eviFk6MiBEXAVYsYz3
         dUikf52Dg/f0bY9sq1jElJGNpZsOL6LRMfPfCeV1Bc6o43zYFjcua5LYpLvF3LZ8bj8W
         C0FfeOqE0LnUJPw6UXKqBuz031dHGuzR7Vz1c=
In-Reply-To: <hTwaxgnIZ2O.A.J8F.wQopLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Matti Aarnio <matti.aarnio--kernel-bugzilla-VYF+RMHuKCpAfugRpC6u6w@public.gmane.org>, NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>

On Mon, Mar 22, 2010 at 4:30 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15142
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : sysfs-related lockdep warning i=
n __blkdev_get
> Submitter =C2=A0 =C2=A0 =C2=A0 : Matti Aarnio <matti.aarnio--kernel-b=
ugzilla-VYF+RMHuKCpAfugRpC6u6w@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-25 13:38 (56 =
days old)
> Handled-By =C2=A0 =C2=A0 =C2=A0: NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : https://bugzilla.kernel.or=
g/attachment.cgi?id=3D25085
>

This is supposed to be fixed by Eric's patch which is now in upstream.

Thanks!
