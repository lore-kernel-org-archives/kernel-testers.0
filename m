From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #36952] [2.6.39] CIFS write failures where 2.6.38 works
Date: Sun, 10 Jul 2011 14:58:54 +0300
Message-ID: <CAOJsxLHNKTh_ATo4_mQfjUfqtddheE-+bF14SPCNYBu+fjW9Tw@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.DX.PmYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=tw1KT76ny3v3tWPbwCdIeQdbTPnuzqhsz/7PzZiyoc0=;
        b=ujloZEJEdrh4VnsIlkXT3itXT84WX7MItUKH1l35XTNBoVk51sJcxsY20M57nDxKSS
         PScwBdqrAkub7zxK5IcmqXxNCaAvUpHWkBqlTKCbdcTZWIdv58H8hCY+Ud0GMsMiEu1+
         /3qWTkn4rNXk7IlyOz5YtqxFVqRM92wHTUxCo=
In-Reply-To: <gK_efVqs2fP.A.DX.PmYGOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Helge Hafting <helge.hafting-CND4fxrytsY@public.gmane.org>, jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
36952
> Subject =A0 =A0 =A0 =A0 : [2.6.39] CIFS write failures where 2.6.38 w=
orks
> Submitter =A0 =A0 =A0 : Helge Hafting <helge.hafting-CND4fxrytsY@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-06-01 10:11 (40 days old)
> Message-ID =A0 =A0 =A0: <4DE6103E.6010100-CND4fxrytsY@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D130692=
387613423&w=3D2

The last comment in Bugzilla states that Jeff was working on a patch.
Was it ever submitted to mainline and stable?

                                Pekka
