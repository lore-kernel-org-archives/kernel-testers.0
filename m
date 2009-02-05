From: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12505] 2.6.29-rc1 Firefox crashing on page load
Date: Wed, 4 Feb 2009 17:37:46 -0800
Message-ID: <dd18b0c30902041737j1c5d71c4w98109eb24aed357d@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <20090204164623.GE25996@elte.hu>
	 <dd18b0c30902041015m2213d94cx72d41bd225afa3e9@mail.gmail.com>
	 <200902050208.15776.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=G4I6seB/t4rBQr0aQ0tYQ35VXUcjm4x488UgA5Ic9jo=;
        b=rCas0HH+XwJUeDoS1hnZV14IxfLtP23JCVgm5vViG5xQCRZN6FnEWg+Y4AiaulJFzg
         0tfMy5oATjKacf4kASUVpYP0Iay4hL5V5KYn4YjnDQYVMmG8fVZ4kgCXJXbCPzXLHd3W
         bCiO/MhqIp1yK7151gPKoWEHf0dJ7KYYpu3v0=
In-Reply-To: <200902050208.15776.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hiroshi Shimamoto <h-shimamoto-ehU+Cx/zZe18UrSeD/g0lQ@public.gmane.org>, Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>

On Wed, Feb 4, 2009 at 5:08 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Wednesday 04 February 2009, Justin Mattock wrote:
>> On Wed, Feb 4, 2009 at 4:46 PM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>> >
>> > * Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> >
>> >> On Wed, Feb 4, 2009 at 2:24 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> >> > This message has been generated automatically as a part of a report
>> >> > of recent regressions.
>> >> >
>> >> > The following bug entry is on the current list of known regressions
>> >> > from 2.6.28.  Please verify if it still should be listed and let me know
>> >> > (either way).
>> >> >
>> >> >
>> >> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12505
>> >> > Subject         : 2.6.29-rc1 Firefox crashing on page load
>> >> > Submitter       : Justin Madru <jdm64-u1xxEuL7cY4AvxtiuMwx3w@public.gmane.org>
>> >> > Date            : 2009-01-16 20:56 (20 days old)
>> >> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4217458dafaa57d8e26a46f5d05ab8c53cf64191
>> >> > References      : http://marc.info/?l=linux-kernel&m=123213941914274&w=4
>> >> > Handled-By      : Justin P. Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> >> >
>> >> >
>> >> >
>> >>
>> >> Well the hardest for this, was to reproduce
>> >> the error.(never did). I guess it can be taken
>> >> of if there was a patch for the fix, and the patch
>> >> made it into the main tree. but if this  is a firefox
>> >> issue, then a report needs to be filed with them.
>> >> so overall my answer is "I don't know."
>> >> :^)
>> >
>> > the error is spurious because gcc randomly stomps on user register state so
>> > the effects can be rather random and unpredictable.
>> >
>> > The fix:
>> >
>> >  552b8aa: Revert "x86: signal: change type of paramter for sys_rt_sigreturn()"
>> >
>> > was included in -rc2 already, so please test latest -git whether you can see
>> > any such troubles.
>> >
>> >        Ingo
>> >
>>
>> Sure I'll test it.
>> I'm just in the process of compiling libc.
>> which looks like I'll be here for a while.
>
> I've closed the bug as hopefully fixed.
>
> Thanks,
> Rafael
>

Cool,

-- 
Justin P. Mattock
