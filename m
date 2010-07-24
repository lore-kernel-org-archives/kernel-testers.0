From: Zeev Tarantov <zeev.tarantov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16353] 2.6.35 regression
Date: Sat, 24 Jul 2010 08:17:16 +0300
Message-ID: <AANLkTinRWnb5wR5SQmf0DMTbAMTy=5X2LM3k3qPFJbPu@mail.gmail.com>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera> <tneGvaw1wLL.A.mr.82XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=CM4gHopJtH2F1QfaN2VJ1v6ztCjj8nbriRn5KQrby/c=;
        b=f5BKPcrs5T+SpeDCUo4RLtJvvyyGGhJIZgtr1cSa4GajwTp131ng5YyMTl7FA3Hldk
         KkCVI48LfY1uSmdH+fNWBueztqFr8Ust5kywC+APecOqvfvrNE6VWfnYi5xisJPV3FtY
         Lrycm7mSMVelGdi32QHO9w7ArPPAZtmAIo0os=
In-Reply-To: <tneGvaw1wLL.A.mr.82XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>

On Fri, Jul 23, 2010 at 14:47, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16353
> Subject =A0 =A0 =A0 =A0 : 2.6.35 regression
> Submitter =A0 =A0 =A0 : Zeev Tarantov <zeev.tarantov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-05 13:04 (19 days old)
> Message-ID =A0 =A0 =A0: <loom.20100705T144459-919-eS7Uydv5nfjZ+VzJOa5vwg@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127836=
002702522&w=3D2
> Handled-By =A0 =A0 =A0: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
> Patch =A0 =A0 =A0 =A0 =A0 : https://patchwork.kernel.org/patch/110988=
/
>

=46ixed in rc6.

-Zeev
