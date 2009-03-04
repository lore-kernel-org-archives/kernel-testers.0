From: =?utf-8?Q?Rog=C3=A9rio?= Brito <rbrito@ime.usp.br>
Subject: Re: Linux 2.6.29-rc6 bombs while compiling a kernel for a
	linkstation/kurobox
Date: Tue, 3 Mar 2009 22:04:53 -0300
Message-ID: <20090304010453.GA18621@ime.usp.br>
References: <20090302094303.GA29819@ime.usp.br> <Pine.LNX.4.64.0903040103440.5059@axis700.grange>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756682AbZCDBFW@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0903040103440.5059@axis700.grange>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Guennadi Liakhovetski <g.liakhovetski@gmx.de>, Tony Breeds <tony@bakeyournoodle.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Kumar
Cc: linux-kernel@vger.kernel.org, linuxppc-dev@ozlabs.org, Anton Blanchard <anton@samba.org>

On Mar 04 2009, Guennadi Liakhovetski wrote:
> Yes, linkstation and storcenter have to migrate to the "physmap-flash=
"=20
> platform driver. For now you can define in your .config
>=20
> CONFIG_MTD_PHYSMAP=3Dy
> CONFIG_MTD_PHYSMAP_COMPAT=3Dy
> CONFIG_MTD_PHYSMAP_START=3D0xffc00000
> CONFIG_MTD_PHYSMAP_LEN=3D0x400000
> CONFIG_MTD_PHYSMAP_BANKWIDTH=3D1

I did that already yesterday. Please, see my patch at
http://marc.info/?l=3Dlinux-kernel&m=3D123606933628020&w=3D4

And the entry at bugzilla:
http://bugzilla.kernel.org/show_bug.cgi?id=3D12811

> (I hope the numbers are correct, just found them in my local tree, do=
n't=20
> remember any more what exactly they configure, please, double-check.)

Yes, I had them in my tree also. And it is tested already, up and
running and in production for 17 hours.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
rbrito@lutz:~$ uptime
 22:03:16 up 17:06,  1 user,  load average: 0.16, 0.03, 0.01
rbrito@lutz:~$=20
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

> And yes, it must be fixed in the mainline. I'll see if I find time fo=
r
> this, maybe tomorrow (actually, already today.)

Please, Cc me any relevant patches, as I'm not subscribed to all those
lists.


Regards, Rog=C3=A9rio Brito.

--=20
Rog=C3=A9rio Brito : rbrito@{mackenzie,ime.usp}.br : GPG key 1024D/7C2C=
AEB8
http://www.ime.usp.br/~rbrito : http://meusite.mackenzie.com.br/rbrito
Projects: algorithms.berlios.de : lame.sf.net : vrms.alioth.debian.org
