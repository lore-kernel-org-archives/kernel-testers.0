From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 3.2-rc2+: Reported regressions from 3.0 and 3.1
Date: Mon, 21 Nov 2011 14:07:20 -0800
Message-ID: <CA+55aFxv7+Kf=sRj7RCSeY0dcVFMcUiXVKT=CY-2aFti5bO4yA@mail.gmail.com>
References: <lx6sezwGldO.A.IhF.UBpWOB@chimera> <201111212249.31196.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:from:date
         :x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=JzrElK5O/ypU7OHzDO2/ZIke6mVaxrQUtdvlzZ7Igfg=;
        b=mQLRnwiQd5X1c8eHMfAQkPuCunu8UTJdw8gthnwfBFGf8LNfpsEJvDP+FN9G2jsmZ0
         4vLFz/IWCAp0eOyzbkydnni52L24Tc9jQKCpbttKxd3oDmKWx1QwJG93r7sXQe1/N9Zy
         RYwXwT46z6JsC97+pv/4S+/jtEHI5igbKXwSg=
In-Reply-To: <201111212249.31196.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux ACPI <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PM List <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Linux SCSI List <linux-scsi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Wireless List <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>

On Mon, Nov 21, 2011 at 1:49 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
> Subject =A0 =A0: Simultaneous cat and external keyboard input causing=
 kernel panic
> Submitter =A0: Timo Jyrinki <timo.jyrinki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 : 2011-11-03 12:14
> Message-ID : CAJtFfxmovJHspHHKbvBVc4pw+u5mjGmUejCXEzdV+GqE=3DjVSOQ@ma=
il.gmail.com
> References : http://marc.info/?l=3Dlinux-kernel&m=3D132032253903074&w=
=3D2

So while funny, I doubt this is actually a bug. It's a feature, as
pointed out by Clemens Ladisch in that thread.

It's simply sysrq-c: "perform a system crash by a NULL pointer derefere=
nce".

Now, I'm perfectly willing to consider that feature to be a
mis-feature, and that this should be considered a bug to be fixed. But
it is not a regression.

Keeping it on the regression list just because it is amusing is
understandable, though ;)

                    Linus
