From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #15719] virtio_net causing kernel BUG when running under
 VirtualBox
Date: Mon, 12 Apr 2010 22:01:07 -0700 (PDT)
Message-ID: <20100412.220107.225635787.davem@davemloft.net>
References: <4BC2DC5A.6090007@mathtm.de>
	<20100412.022828.52192543.davem@davemloft.net>
	<4BC2ECE4.1020704@mathtm.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4BC2ECE4.1020704-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org, mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org, xma-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org

=46rom: Thomas M=FCller <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Date: Mon, 12 Apr 2010 11:50:28 +0200

> I think I have to disagree.

Indeed you're right, net-2.6 needs it too.

Thanks for catching this, I've cherry picked the commit
from net-next-2.6 and added it to net-2.6

Thanks again!
