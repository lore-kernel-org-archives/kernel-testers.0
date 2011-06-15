From: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #36452] Artifacts with 3.0-rc1 on SandyBridge
Date: Wed, 15 Jun 2011 23:15:27 +0200
Message-ID: <20110615231527.7701473b@schatten.dmk.lab>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera>
	<JL7O0m0yLjL.A.vCD.COS9NB@chimera>
	<20110615114329.7429ff43@jbarnes-desktop>
	<4DF9011D.6050107@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4DF9011D.6050107-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Zhaunerchyk <alex.vizor-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wed, 15 Jun 2011 21:59:41 +0300
Alexander Zhaunerchyk <alex.vizor-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> I can't bisect. I tried to bisect other other bug but with some commits 
> I can't even boot, kernel hangs in panic.

You can try and use 'git bisect visualize' which will show you all
commits not yet eliminated from the bisection search. There you can
choose another commit to test (or just do a git reset --hard
[thatcommit]) or look for a fix to that problem higher up in the
commit list. 

Regards,
Flo
