From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Tue, 13 Jan 2009 21:30:10 +0800
Message-ID: <b6a2187b0901130530y346f2526l220ea410dd95ea91@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <b6a2187b0901122028w3f85fc9aj41d7c8ac44adb2ed@mail.gmail.com>
	 <b6a2187b0901122147o45890cd4lfb6ba7b2908e6ae7@mail.gmail.com>
	 <200901131232.17941.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=5eQxdw4GoiGoyEcXnSYnbN3FnlGskJcIgocg36Kwu0Q=;
        b=iiI0kIs0LkNBAOn7GvPMjOsthgIlVnNcdJcGFnKETaUhHUQyD6j47oU5iNh/81DD8w
         8ytGwU3mTCqPvHmTYJ0EA5ztP1KPCV8XELJOuma4Tlkr4VVTPQ/f3c5bLq5ZFay8LTlU
         09F0LbA+hCiOrm44joMXzZRDUm22Y68x0VrFA=
In-Reply-To: <200901131232.17941.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>

On Tue, Jan 13, 2009 at 7:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Tuesday 13 January 2009, Jeff Chua wrote:
>> On Sun, Jan 11, 2009 at 7:16 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>
>> > The following bug entry is on the current list of known regressions
>> > from 2.6.28.  Please verify if it still should be listed and let me know
>> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12422
>> > Subject         : 2.6.28-git can't resume from str
>> > Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Date            : 2009-01-10 1:39 (2 days old)
>> > References      : http://marc.info/?l=linux-kernel&m=123155157909282&w=4
>>
>> Fixed by reverting a0d4922da2e4ccb0973095d8d29f36f6b1b5f703.
>> 7503bfbae89eba07b46441a5d1594647f6b8ab7d has already been reverted in
>> the Linus's latest git tree.
>
> Can you please check if the issue goes away ...
> instead of reverting commit a0d4922da2e4ccb0973095d8d29f36f6b1b5f703

Confirmed. This commit works. STR still ok.

But now, a different problem. STD "almost" ok. Suspend-to-disk hangs
after counting to 100%. Power-cycle and boot ok able to resume. ...
Again, this is another problem with/without your latest patch. Another
issue is with iwl4965 not able to attach to my hidden AP. Will try to
bisect soon.

Thanks for the patch.

Jeff.
