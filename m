From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #20232] kworker consumes ~100% CPU on HP Elitebook 8540w running 2.6.36_rc6-git4
Date: Mon, 20 Dec 2010 21:56:00 +0100
Message-ID: <201012202156.00621.rjw@sisk.pl>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera> <1292841313.2708.137.camel@laptop> <4D0F8890.2070307@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4D0F8890.2070307-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Ozan Caglayan <ozan-caicS1wCkhO6A22drWdTBw@public.gmane.org>

On Monday, December 20, 2010, Tejun Heo wrote:
> Hello,
> 
> On 12/20/2010 11:35 AM, Peter Zijlstra wrote:
> > On Sun, 2010-12-19 at 13:50 +0100, Rafael J. Wysocki wrote:
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.35 and 2.6.36.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> >> be listed and let the tracking team know (either way).
> >>
> >>
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20232
> >> Subject		: kworker consumes ~100% CPU on HP Elitebook 8540w running 2.6.36_rc6-git4
> >> Submitter	: Ozan Caglayan <ozan-caicS1wCkhO6A22drWdTBw@public.gmane.org>
> >> Date		: 2010-10-13 06:13 (68 days old)
> > 
> > I'd be thinking that kworker going wonky is something for Tejun to have
> > a look at.. Anyway, is it still relevant for current kernels?
> 
> It looks like the work is scheduled in loop, so the kworker acting out
> seems to be the symptom of the problem not the cause.  Looks like
> Rafael already has a proper fix on mind, so...

Rather, something that _might_ work.

I'm quite confident that this is a BIOS issue.  Apparently, the BIOS tells us
we can control PCI Express hotplug, but then it tries to do that itself via
ACPI at the same time and that leads to a GPE storm.  We may try to poke the
BIOS a bit differently than we do right now, but whether or not it helps is
to be seen.

Also, we can try to handle both ACPI-based and native PCIe hotplug
simultaneously at the same port, but that's going to be tricky.

We still can use DMI-based blacklisting as the last resort.

Thanks,
Rafael
