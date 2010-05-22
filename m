From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15601] [BUG] SLOB breaks Crypto
Date: Sat, 22 May 2010 13:22:57 +0300
Message-ID: <AANLkTikXPfDVhwsUMr5yDpsvgk06QrMFXpG22k8T0ydi@mail.gmail.com>
References: <10aqDnTJcLO.A.mLE.48y5LB@chimera>
	 <HqroMXsT-CJ.A.qYG.f_y5LB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=U4QRK7GFscw3+8MYCmky+NoOs8B7u/F5uZS86JPmgDY=;
        b=V9WGXA4v9TVHT4h/2ixsCzwz7Vd5Gul7XgXWaXiQe40//Kz8e8lvK0KzjvgtMwL2tU
         WhIbo9Q4g/9KN/gW6qKY9FbankDOnIunnHnu7t26JKfYDFTWLOW3is/3HIa4gOhtwYZP
         OQpNutfYSG9tSThUrppsmy3yWMK55lqc4fGfc=
In-Reply-To: <HqroMXsT-CJ.A.qYG.f_y5LB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "michael-dev-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org"@ogre.sisk.pl, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Matt Mackall <mpm-VDJrAJ4Gl5ZBDgjK7y7TUQ@public.gmane.org>, Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>

On Mon, May 10, 2010 at 12:17 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.33. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15601
> Subject =A0 =A0 =A0 =A0 : [BUG] SLOB breaks Crypto
> Submitter =A0 =A0 =A0 : michael-dev-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-03-15 13:39 (56 days old)
> Message-ID =A0 =A0 =A0: <4B9E38AF.70309-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126866=
044724539&w=3D2

Herbert, David, Matt, this bug should be fixed by the following two
commits, right?

http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3D=
commitdiff;h=3D18eb8ea6ee4cc9ed39b45f95b734f523bcfb586b

http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3D=
commitdiff;h=3D273fca0ecad9305247043815e185d1bfd04047d4
