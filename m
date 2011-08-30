From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #41102] BUG dentry: Poison overwritten / BUG buffer_head: Poison overwritten
Date: Tue, 30 Aug 2011 20:47:03 +0200
Message-ID: <201108302047.03193.rjw@sisk.pl>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera> <gUVi6eNP8RE.A.yOG.depWOB@chimera> <1314706380.1989.8.camel@x61.thuisdomein>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1314706380.1989.8.camel-uMdlDhfIn7prKue/0VVhAg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Paul Bolle <pebolle-IWqWACnzNjzz+pZb47iToQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Tuesday, August 30, 2011, Paul Bolle wrote:
> On Sun, 2011-08-28 at 21:01 +0200, Rafael J. Wysocki wrote:
> > Please verify if it still should
> > be listed and let the tracking team know (either way).
> 
> From comment #2:
> > [...] please note that the 3.0.1 kernel I
> > triggered this issue with seems to be the first I ran on this machine that has
> > CONFIG_SLUB_DEBUG_ON set. So on this machine this issue - if it's more than a
> > one time goof - would never have showed up in the logs unless I manually booted
> > with "slub_debug" on the command line. And I can't remember booting with
> > "slub_debug".
> 
> At this moment I see little reason to track this bug entry as a
> regression.

OK, dropped from the list of recent regressions.

Thanks,
Rafael
