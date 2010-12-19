From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #24772] Crash with btrfs rootfs on dm-crypt [ kernel BUG at
 fs/btrfs/inode.c:806! ] on linux 2.6.37-rc5
Date: Sun, 19 Dec 2010 20:24:28 +0100
Message-ID: <AANLkTinRtWhM=NdjYWYNN5XBtxdUtCGVyPA_YhLC2BSm@mail.gmail.com>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
	<6Ue85L6pKCJ.A.9eD.8dfDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=hpbXQs8TTK1WfFb7bgSzwNuKrVpkCV+4AfejHOfMd8U=;
        b=eWnaJMbGoIbtMNTvCpAc9L9w8dZC3BIJmCqLBxDjmjTyKZqd2OYF2FqvpMnmPD9y5X
         /JelUDuBrlFBCWuM6/+pYSAEMhtFY8XtXo8LjSkV197UoLHk5m22R7ni1GSQWhisBunr
         Ej0QZJq3faE05ox098zwxb4pag3rdVEdHQZf4=
In-Reply-To: <6Ue85L6pKCJ.A.9eD.8dfDNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

Hi.
As I wrote in the report, the bug destroyed my installation, so I
don't have linux anymore on that laptop.

On Sun, Dec 19, 2010 at 1:34 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.36. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D24772
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Crash with btrfs rootfs on dm-c=
rypt [ kernel BUG at fs/btrfs/inode.c:806! ] on linux 2.6.37-rc5
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-12-10 20:30 (10 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <AANLkTi=3Dj9zsaYNcu=3DNgGV=3DHfE-3r=
NHzVswov8VrgwjQp-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D129201308706568&w=3D2
>
>
>
