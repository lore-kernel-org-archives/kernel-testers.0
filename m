From: =?UTF-8?B?UkFMT1ZJQ0gsIEtyaXN0w7Nm?= <kristof.ralovich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15392] The kernel does not start up.
Date: Sun, 21 Mar 2010 22:47:57 -0400
Message-ID: <5712ce4f1003211947i1a2ac84ch269885f7c2888c4f@mail.gmail.com>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.DEE.3OopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=smReY3vokiMnlaDT/M7DIWg311RBvC/pbXh4Luk3/iU=;
        b=DWZImTJ/0oWvWl34lvIiYKLrDMxatwnOj9WfoSDZhR7iqzJ6kHtF/GJTjaGeh01snn
         D1ngCylxqYbSJUcc+sJLKjT3P0FZShNIf/qy96Hjqqt7R3MruM/BjExwdLAsv47VSKEI
         q4NCRjOoZR+B0eaEagl6u24r294Md3vRjIvts=
In-Reply-To: <hTwaxgnIZ2O.A.DEE.3OopLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

The issue is still there with 2.6.33-rc1, 2.6.33 and 2.6.33.1 too.

Kristof

On Sun, Mar 21, 2010 at 16:30, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
cgi?id=3D15392
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : The kernel does not start up.
> Submitter =C2=A0 =C2=A0 =C2=A0 : Krist=C3=B3f Ralovich <kristof.ralov=
ich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-02-25 06:52 (25 =
days old)
>
>
>
