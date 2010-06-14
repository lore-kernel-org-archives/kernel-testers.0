From: Eric Miao <eric.y.miao-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15712] [regression] 2.6.34-rc1 to -rc3 on zaurus: no longer 
	boots
Date: Mon, 14 Jun 2010 12:20:35 +0800
Message-ID: <AANLkTilOhHVi6u0jmPj87s9PGvxPjiT_dxAmqDJ5qTUf@mail.gmail.com>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera> <YPGdyfWGvNK.A.2FB.W8OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=RigCuesgXviFPmhl3HAWomzxOJLs/BhRfW1zDRA+R1k=;
        b=FAMXbw5ByuxXO9hhvAJHfE3uDR6B+vz+znueWuK9Fd2nwCM5d0pQZhulFsSqVRYoPC
         sn5Ck49/Hubrr6WZjONAhQMgiVW+MYd/5Z0Gc9ouxjSZUQzI+7xq4AvnQ7Xyp5kiSgtK
         w6rWHv12ICnARiJENHpOqRzIFHiju+3c8dQfk=
In-Reply-To: <YPGdyfWGvNK.A.2FB.W8OFMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>

Rafael and Pavel,

I can boot successfully on my akita/corgi with my 2.6.35-rc3 kernel.
I'll find some time to test v2.6.34 though.

Pavel,

Is any more update on your side?

On Sun, Jun 13, 2010 at 10:48 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15712
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : [regression] 2.6.34-rc1 to -rc3=
 on zaurus: no longer boots
> Submitter =C2=A0 =C2=A0 =C2=A0 : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-04-01 6:06 (74 d=
ays old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <20100401060624.GA1329-+ZI9xUNit7I@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D127010200817402&w=3D2
> Handled-By =C2=A0 =C2=A0 =C2=A0: Eric Miao <eric.y.miao-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
>
>
