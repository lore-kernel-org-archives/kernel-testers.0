From: Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
Subject: Re: [Bug #33242] Lockdep splat in autofs with 2.6.39-rc2
Date: Sun, 15 May 2011 19:25:10 -0400
Message-ID: <20110515232509.GA11642@elliptictech.com>
References: <So1vU2GC7XM.A.5wB.44vzNB@chimera>
 <HA8urZ3ZRcP.A.TvC.O6vzNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <HA8urZ3ZRcP.A.TvC.O6vzNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On 2011-05-15 00:18 +0200, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.38.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33242
> Subject		: Lockdep splat in autofs with 2.6.39-rc2
> Submitter	: Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
> Date		: 2011-04-07 19:44 (38 days old)
> Message-ID	: <20110407194403.GA29404-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=130220545614682&w=2

This one is tough to reproduce, but I imagine that it's still present in
mainline because I haven't heard anything about it since I was asked to
test the patch here:

  http://permalink.gmane.org/gmane.linux.kernel/1129741

Cheers,
-- 
Nick Bowler, Elliptic Technologies (http://www.elliptictech.com/)
