From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Mon, 26 Oct 2009 23:32:49 +0200
Message-ID: <11fae7c70910261432w27b39e92ld319487e679fccaa@mail.gmail.com>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
	 <vX3ILojF2dJ.A.Zs.mgf5KB@chimera>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=WfQJgOiRT3UOv70DN2W2squCZ5FuZ2UZRFyl5/DjjZI=;
        b=pzWeTSQKE4rGpOmrjZwGEnW7KjMxiKJFywj4DKxsGCP0WV8Eo7m3zolJCFzTR83FCO
         woDA1IfxmLCFyvMX+w5r6O+rjjkUHlhXIoTde0cDPie4njeoFBlU50OQXOf5Sn15G7xE
         FWs8g5Xl3dAYO8Fq2ExW6IsFDbGJ2Dyf6ZruY=
In-Reply-To: <vX3ILojF2dJ.A.Zs.mgf5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>

I do not recall anyone on LKML actually ever doing any work towards
fixing this issue so, yes, it is still open.

On Mon, Oct 26, 2009 at 9:31 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13941
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : x86 Geode issue
> Submitter =C2=A0 =C2=A0 =C2=A0 : Martin-=C3=89ric Racine <q-funk@iki.=
fi>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-03 12:58 (85 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124930434732481&w=3D4
>
>
>
