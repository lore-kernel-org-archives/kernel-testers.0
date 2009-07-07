From: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: cpufreq cleanups - .30 vs .31
Date: Mon, 6 Jul 2009 21:51:15 -0400
Message-ID: <20090707015115.GB5310@redhat.com>
References: <200907061318.20839.trenn@suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200907061318.20839.trenn-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Mon, Jul 06, 2009 at 01:18:18PM +0200, Thomas Renninger wrote:

 > So if not find too intrusive, I'd say:
 > Venkatesh's whole series of:
 > [patch 0/4] Take care of cpufreq lockdep issues (take 2)
 > should be seen in .31.
 >  ...
 > The one patch from Mathieu:
 > [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
 > is a separate, general cleanup which should show up in .31.

I came to the same conclusion after reading the thread, and looking
over the patches.  I merged the above, and sent Linus a pull request
a few minutes ago.

Thanks Mathieu and Venki for chasing this down.

	Dave
