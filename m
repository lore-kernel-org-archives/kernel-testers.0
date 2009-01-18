From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #12391] Processor does not go below C2 state until
	usb.autosuspend is enabled
Date: Sun, 18 Jan 2009 09:24:02 +0100
Message-ID: <20090118082401.GC1944@ucw.cz>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.LMC.safaJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <nHCfeC0YLrE.A.LMC.safaJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Gergely Imreh <imrehg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun 2009-01-11 12:41:04, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12391
> Subject		: Processor does not go below C2 state until usb.autosuspend is enabled
> Submitter	: Gergely Imreh <imrehg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-09 02:35 (3 days old)

Are you sure that's regression? IIRC usb.autosuspend is needed for
C3. It is certainly needed if you have *any* usb device plugged in.

What hw is that?

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
