From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #37472] Lenovo U160 (i915 black screen)
Date: Sun, 10 Jul 2011 14:56:19 +0300
Message-ID: <CAOJsxLGkWX61TLqwgL19tN5ZQuB2cUibPsNSvCB+Ydihtus__w@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.NJ.7lYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=CFksDL0/7rlj/WQoIZaHqToTV6d+xufYulKt5LSVHNM=;
        b=DWjr2r8pAS+UzolDKHVF7r6mhkBLhzD5d+BrDbvEtaHT2zHliTvKjjm8jvaKkO80p+
         suMC8ayihbsNmpXCZuZpnjUJGe7qUrDEN9OVDxrJsjckiSen44ltEqK08V5CXnJP8seH
         7bT8Xm38KbJO50660JIbBKTCJ4n+Z/rHeX/W0=
In-Reply-To: <gK_efVqs2fP.A.NJ.7lYGOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Robse <rob-se-Dz115AEZgoU@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
37472
> Subject =A0 =A0 =A0 =A0 : Lenovo U160 (i915 black screen)
> Submitter =A0 =A0 =A0 : Robse <rob-se-Dz115AEZgoU@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-06-14 15:17 (27 days old)

There's no mention that the i915 developers know about this problem so
I'm CC'ing Keith and Chris.
