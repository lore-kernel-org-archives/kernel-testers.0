From: "Srivatsa S. Bhat" <srivatsa.bhat-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Subject: Re: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Thu, 22 Dec 2011 16:45:24 +0530
Message-ID: <4EF3114C.6020406@linux.vnet.ibm.com>
References: <201112210054.46995.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201112210054.46995.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, "pavel-+ZI9xUNit7I@public.gmane.org" <pavel-+ZI9xUNit7I@public.gmane.org>, Chris Ball <cjb-2X9k7bc8m7Mdnm+yROfE0A@public.gmane.org>, manuel.lauss-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org, Udo Steinberg <udo-VarzJz7m+TuRpAAqCnN02g@public.gmane.org>

On 12/21/2011 05:24 AM, Rafael J. Wysocki wrote:

> [Evidently, vger has blocked the previous attempts to post this message
> for some reason.  I wonder why?]
> 
> This message contains a list of some regressions from 3.0 and 3.1
> for which there are no fixes in the mainline known to the tracking team.
> If any of them have been fixed already, please let us know.
> 
> If you know of any other unresolved regressions from 3.0 and 3.1, please let us
> know either and we'll add them to the list.  Also, please let us know if any of
> the entries below are invalid.
> 
> The entries below are simplified and the statistics are not present due to the
> continuing Bugzilla outage.
> 
> 
> Subject    : 3.2-rc2: regression after hibernate: lots of warnings, broken 
> system
> Submitter  : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> Date       : 2011-11-24 15:40
> Message-ID : 20111124154014.GA2153-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org
> References : http://marc.info/?l=linux-kernel&m=132214929818015&w=2
> 


This one looks a bit similar to the one reported at
http://thread.gmane.org/gmane.linux.kernel/1230509/ which is fixed by
commit 29495aa04a30c21565243c5b9c028510446d242c.

 

Regards,
Srivatsa S. Bhat
