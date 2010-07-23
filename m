From: Tim Gardner <tcanonical-l6nL5VImRDY@public.gmane.org>
Subject: Re: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Fri, 23 Jul 2010 15:11:23 +0200
Message-ID: <4C4994FB.9090205@mail.tpi.com>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera> <tneGvaw1wLL.A.9fB.v3XSMB@chimera>
Reply-To: tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tneGvaw1wLL.A.9fB.v3XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chris Wilson <"email addresshidden"@ogre.sisk.pl>, Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>

On 07/23/2010 01:47 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16294
> Subject		: [Q35 bisected] hang at init of i915 driver
> Submitter	: Kees Cook<kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>
> Date		: 2010-06-25 18:20 (29 days old)
> First-Bad-Commit: http://git.kernel.org/linus/f1befe71fa7a79ab733011b045639d8d809924ad
> Handled-By	: Tim Gardner<tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/111130/
>
>

There is a patch attached to the BZ report that has been ack'd by a 
couple of testers as well as by the original committer. I've been told 
that it should go through Eric Anholt instead of Dave Arlie, but Eric 
has yet to respond.

Acked-by and Tested-by included in this thread: 
http://lkml.org/lkml/2010/7/21/278

rtg
-- 
Tim Gardner tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org
