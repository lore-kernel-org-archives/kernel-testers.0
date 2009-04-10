From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [linux-pm] Regression: First hibernation attempt fails
Date: Fri, 10 Apr 2009 11:23:18 +0200
Message-ID: <20090410092318.GB30093@elf.ucw.cz>
References: <49DDD83F.507@tuffmail.co.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <49DDD83F.507-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Thu 2009-04-09 12:13:03, Alan Jenkins wrote:
> Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
> wonder if it rings any bells?
> 
> On my laptop (EEE 4G), the first attempt at hibernation fails. 
> Subsequent attempts succeed.
> 
> If I use s2disk as normal, I see "snapshotting system", then before it
> gets to write out the image, it aborts and switches back to X.   I can't
> see any error message, even if I check the log with "dmesg".
> 
> If I use "echo disk > /sys/power/state", echo reports the error "Cannot
> allocate memory".
> 
> This only happens if I've logged in to X first.  In fact, I narrowed it
> down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
> then it doesn't happen.

Anything interesting in dmesg?

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
