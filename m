From: Tino Keitel <tino.keitel-rAwCM5oiXHA@public.gmane.org>
Subject: Re: [Bug #16207] Suspend and VT switch hangs since 2.6.34
Date: Fri, 23 Jul 2010 19:50:56 +0200
Message-ID: <20100723175056.GA30411@x61.home>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
 <PRbv8sgxY6G.A.j1F.aVYSMB@chimera>
 <20100723103336.539a3d61@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100723103336.539a3d61-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Jul 23, 2010 at 10:33:36 -0700, Jesse Barnes wrote:

[...]

> I think this may actually be an X server bug.  2.6.34 introduced some

Hi,

that seems to be not a kernel issue indeed, as at some point I never
got this hang again. However, I upgraded to new versions of Mesa, DRM,
and also new bugfix releases of the Xserver (those in Debian unstable).

Regards,
Tino
