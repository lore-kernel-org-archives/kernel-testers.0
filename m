From: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15704] [r8169] WARNING: at net/sched/sch_generic.c
Date: Mon, 26 Jul 2010 17:20:50 +0200
Message-ID: <1280157650.2899.454.camel@edumazet-laptop>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
	 <PRbv8sgxY6G.A.UEH.mYYSMB@chimera>
	 <20100726131629.GA4398@swordfish.minsk.epam.com>
	 <1280154873.2899.390.camel@edumazet-laptop>
	 <20100726145742.GA4888@swordfish.minsk.epam.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=z8KdFoppvHJx4uCnsBH8c1YPc/ea0IX5GODprkYoIkI=;
        b=J2KKELifCeK5ZaNj5c46ghYqxX/TGqNzcPq7fwcgMRf6+B4F42vED9pEST9AzcZmxS
         zTM/ri2/bPb0HqqnGVf+s/h/eTF3E8laFrTndvLDR2yEQZE6fGaDOr+3gddVr0Fz/Y4t
         v4dTwM/Islm93cwyO8qbmPJIUM5rjvSOORwxQ=
In-Reply-To: <20100726145742.GA4888-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, netdev <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Le lundi 26 juillet 2010 =C3=A0 17:57 +0300, Sergey Senozhatsky a =C3=A9=
crit :

>=20
> Only sending.=20
>=20
> --
>  PGDEV=3D/proc/net/pktgen/eth0
>  echo "Configuring $PGDEV"
>  pgset "$COUNT"
>  pgset "$CLONE_SKB"
>  pgset "$PKT_SIZE"
>  pgset "$DELAY"
>  pgset "dst 192.168.x.x"
>  pgset "dst_mac  x:x:x:x:x:x"
>=20
>  PGDEV=3D/proc/net/pktgen/pgctrl
>=20
>  echo "Running..."
>  pgset "start"
> --
>=20
> =20

If you try with a DELAY=3D3000 (or 5000), what happens ?

Do you have TX pause enabled ? If yes, try to disable pauses.

# ethtool -a eth0
Pause parameters for eth0:
Autonegotiate:	on
RX:		on
TX:		on

# ethtool -A eth0 rx off tx off
# ethtool -a eth0
Pause parameters for eth0:
Autonegotiate:	on
RX:		off
TX:		off


