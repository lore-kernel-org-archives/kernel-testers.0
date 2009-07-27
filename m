From: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13837] Input : regression - touchpad not detected
Date: Mon, 27 Jul 2009 16:45:07 +0800
Message-ID: <a8e1da0907270145t1b7e4b7ey30793b97bcd87916@mail.gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.u-B.KHObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=QjMpNaHdB+t25v4rxIzATPkhW644UjMxD4NPwd3CaOc=;
        b=afqEoH35rtijg4j47RoOpQ4oViFRUr3a06qCfZVlvOSo1c8Q00tg0L3EzV3YfphuEK
         y4iHy1SWQClR/zynEKNrs2BuRtbyY3XRPp3d2Mmdyt2/JAtT3T2vEKACymDiaFAdlyRd
         ha51MMDAwhgJfvR8Epdo2L77bZmRsh5Ke9mvc=
In-Reply-To: <3zAHs5O6maO.A.u-B.KHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>

On Mon, Jul 27, 2009 at 4:28 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).

Now I'm not sure if it's a regression, because it happens not every
boot. Maybe I just noticed it after 2.6.30

jiri, I found the place via extra printk messages added to the i8042.c

in function i8042_check_aux(), when touchpad detecting fail, it fall
into following error path:

 if (wait_for_completion_timeout(&i8042_aux_irq_delivered,
                                        msecs_to_jiffies(250)) =3D=3D 0=
) { [snip] }

so maybe the timeout value need to be increased? I try redo the
i8042_setup_aux after it fails, it fixes the problem indeed, which one
is the proper fix do you think? If it's the right fix I can post the
patch.

>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13837
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Input : regression - touchpad n=
ot detected
> Submitter =C2=A0 =C2=A0 =C2=A0 : Dave Young <hidave.darkstar-Re5JQEeQqe8@public.gmane.org=
m>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-07-17 07:13 (10 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124780763701571&w=3D4
>
>
>



--=20
Regards
dave
