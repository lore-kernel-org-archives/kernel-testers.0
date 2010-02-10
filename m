From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15195] kernel BUG at include/net/netns/generic.h:41, pfkey_create+0x36/0x18b [af_key]
Date: Wed, 10 Feb 2010 20:23:34 +0100
Message-ID: <201002102023.34292.rjw@sisk.pl>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera> <445R0ey9hAI.A.4VB.YozbLB@chimera> <68676e01002100759v37f79938p51f3aeb6c068d39a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <68676e01002100759v37f79938p51f3aeb6c068d39a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wednesday 10 February 2010, Luca Tettamanti wrote:
> On Sun, Feb 7, 2010 at 11:28 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=15195
> > Subject         : kernel BUG at include/net/netns/generic.h:41, pfkey_create+0x36/0x18b [af_key]
> > Submitter       : Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2010-01-30 13:23 (9 days old)
> > References      : http://marc.info/?l=linux-netdev&m=126485785004775&w=4
> > Handled-By      : Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/75891/
> 
> Fixed by commit 180211b841b5bf13ab10d19202adab3eb7749f6c

Thanks, closing.

Rafael
