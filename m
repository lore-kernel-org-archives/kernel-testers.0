From: Andy Lutomirski <luto-YSGFQ8SKJZVDPfheJLI6IQ@public.gmane.org>
Subject: Re: [RFT] x86 acpi: normalize segment descriptor register on resume
Date: Sat, 12 Jul 2008 16:39:17 -0400
Message-ID: <48791675.6060805__32823.313601739$1216146117$gmane$org@myrealbox.com>
References: <200807010148.02135.rjw@sisk.pl> <486A96C1.2020106@firstfloor.org> <48784F51.1010407@myrealbox.com> <200807122051.25634.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200807122051.25634.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: luto-YSGFQ8SKJZVDPfheJLI6IQ@public.gmane.org, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org, ACPI Devel Maling List <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>




Rafael J. Wysocki wrote:
> On Saturday, 12 of July 2008, Andy Lutomirski wrote:
>> My Lenovo X61s fails to resume if I suspend it from within X, on both 
>> 2.6.26-rc9 and recent wireless-testing.  2.6.26-rc8 is fine, as is 
>> wireless-testing with 4b4f7280 reverted.  My in-progress bisect between 
>> -rc8 and -rc9 is also consistent with this being the problem.
>>
>> The symptom is that, when I push the power button to resume, the hard 
>> drive light turns on, the fan turns on, then the hard drive light turns 
>> off, the sleep light stays on, and the fan keeps running.  Sometimes the 
>> battery light will blink off very briefly (1/4 sec, maybe) every few 
>> seconds.  The system is locked hard at this point.
>>
>> I'm using Ubuntu Hardy userspace.
> 
> Well, that's bad.
> 
> There is the bugzilla entry at http://bugzilla.kernel.org/show_bug.cgi?id=11064
> for this bug and you've just confirmed my suspicion that this particular
> commit is to blame.
> 
> Can you please see if the appended patch changes anything?

More correctly:

If I suspend by typing pm-suspend or echo mem >/sys/power/state, then it 
resumes just fine.  If I log in to Gnome and push the suspend button, 
then it does not resume.  This seems to be the case with or without your 
patch.

-rc8 and -rc9 with the original patch 4b4f7280 resume fine no matter how 
I suspend.

--Andy

