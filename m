From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #12391] Processor does not go below C2 state until
	usb.autosuspend is enabled
Date: Tue, 27 Jan 2009 11:27:15 +0100
Message-ID: <20090127102715.GB20854@elf.ucw.cz>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.p8C._JRdJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <cX2gZ6Cy9nC.A.p8C._JRdJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Gergely Imreh <imrehg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon 2009-01-19 22:45:39, Rafael J. Wysocki wrote:
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
> Date		: 2009-01-09 02:35 (11 days old)

Hmm? That would be quite expected behaviour. USB autosuspend is needed
for C3... (as soon as any USB device is plugged in, at least). Can you
doublecheck that 2.6.27 could run with C3 with active USB? That would
be small miracle...

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
