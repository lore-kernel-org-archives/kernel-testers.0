From: Zeev Tarantov <zeev.tarantov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16353] 2.6.35 regression
Date: Fri, 9 Jul 2010 11:50:42 +0300
Message-ID: <AANLkTikKPkL7N2nD1Z-vsUU2pRkfk52KSgTPkFckpNFx@mail.gmail.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.f6H.kLmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:in-reply-to
         :references:from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=t3gyhj3gDcjXlxOze6Sb1Wod3Yf6SjKbqOhVGbfkwto=;
        b=uG8oLph6fJoTrSM4GYu/aIpyyG3ep1J/PvdLKEUPsG/IWgJsLXHjSw6BxLdZ2A45/V
         QBnP0StYbdntvor+ylwXKlG7Bs50ZpjAnEdAJxNz0jgIjN9SdJMBvvF/5naKJuRxpc89
         veNkOcqz5T4eVvUA7QgAwCl95gKF3fpoy5g1E=
In-Reply-To: <TXb9XdQzJoD.A.f6H.kLmNMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Jul 9, 2010 at 02:41, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-05 13:04 (4 days old)
> Message-ID =A0 =A0 =A0: <loom.20100705T144459-919-eS7Uydv5nfjZ+VzJOa5vwg@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127836=
002702522&w=3D2


There's a working patch by Steven Rostedt at
http://marc.info/?l=3Dlinux-kernel&m=3D127864600425732&w=3D2

-Zeev
