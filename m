From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #12610] sync-Regression in 2.6.28.2?
Date: Mon, 23 Feb 2009 00:37:36 -0500
Message-ID: <20090223053736.GC19739@mit.edu>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.xTF.As0lJB@chimera> <20090221175646.GB3750@mit.edu> <200902221102.10579.rjw@sisk.pl> <20090223043536.GC19687@suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090223043536.GC19687-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Federico Cuello <fedux-yJigggV1mSdd+7ixHBZSzg@public.gmane.org>, Ralf Hildebrandt <Ralf.Hildebrandt-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Sun, Feb 22, 2009 at 08:35:36PM -0800, Greg KH wrote:
> 
> Ted, can you forward the needed patches to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, or just
> tell us to take those git commits directly?
> 

Already in the for-stable and for-stable-2.6.27 branches of the ext4
git tree.  I was going to see if some folks would do some quick
testing (even though it it was mostely a straightforward git
cherry-pick) before sending it to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org; you should see
them in 2-3 days or so.  If you need them sooner, I can accelerate
when I push them to you....

					- Ted
