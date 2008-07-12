From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [RFT] x86 acpi: normalize segment descriptor register on resume
Date: Sat, 12 Jul 2008 22:47:49 +0200
Message-ID: <200807122247.50851.rjw__3900.98918364874$1215896672$gmane$org@sisk.pl>
References: <200807010148.02135.rjw@sisk.pl> <200807122051.25634.rjw@sisk.pl> <48791484.4010408@myrealbox.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48791484.4010408-YSGFQ8SKJZVDPfheJLI6IQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andy Lutomirski <luto-YSGFQ8SKJZVDPfheJLI6IQ@public.gmane.org>
Cc: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org, ACPI Devel Maling List <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>




On Saturday, 12 of July 2008, Andy Lutomirski wrote:
> Rafael J. Wysocki wrote:
> > On Saturday, 12 of July 2008, Andy Lutomirski wrote:
> >> My Lenovo X61s fails to resume if I suspend it from within X, on both 
> >> 2.6.26-rc9 and recent wireless-testing.  2.6.26-rc8 is fine, as is 
> >> wireless-testing with 4b4f7280 reverted.  My in-progress bisect between 
> >> -rc8 and -rc9 is also consistent with this being the problem.
> >>
> >> The symptom is that, when I push the power button to resume, the hard 
> >> drive light turns on, the fan turns on, then the hard drive light turns 
> >> off, the sleep light stays on, and the fan keeps running.  Sometimes the 
> >> battery light will blink off very briefly (1/4 sec, maybe) every few 
> >> seconds.  The system is locked hard at this point.
> >>
> >> I'm using Ubuntu Hardy userspace.
> > 
> > Well, that's bad.
> > 
> > There is the bugzilla entry at http://bugzilla.kernel.org/show_bug.cgi?id=11064
> > for this bug and you've just confirmed my suspicion that this particular
> > commit is to blame.
> > 
> > Can you please see if the appended patch changes anything?
> 
> I suspended and resumed OK.  Then I rebooted and tried again, and it failed.

That's very strange.

Well, is suspend/resume 100% reliable without commit
4b4f7280d7fd1feeff134c2cf2db32fd583b6c29 ?

Also, is the system 64-bit or 32-bit and do you use any user-space quirks to
bring the graphics to life during resume?

And what does happen if you suspend it from the console (no X)?

Rafael

