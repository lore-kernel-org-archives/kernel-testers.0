From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 07 Jun 2009 08:10:08 -0500
Message-ID: <4A2BBC30.2030300@lwfinger.net>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1244380210; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=8hQxxf6SHBoB/YTueqwHV2jf2fkxlo8bDX+JF3eQjLg=; b=gQP
     xnSDfyAAwkATGnOqTK6SiRWQbZm0Ly9STgFqxZ5Os0c7cGwnNhjieEs5kHMSQJ/dk3w
     dYy2V4R1tCcltrCA==
In-Reply-To: <D9VoutSOyXP.A.hvH.Ha7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
> Subject		: Page allocation failures with b43 and p54usb
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-04-29 21:01 (40 days old)
> References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

This bug is extremely difficult to pin down. I cannot reproduce it at
will. The system has to be up for a long time, which is difficult with
testing the late RC's of 2.6.30 and the code in wireless-testing so
that new bugs don't end up in 2.6.31-RCX. That said, it still was in
2.6.30-RC6 and I'm not aware of any changes since that would fix it.

My operating kernel is patched with additional diagnostics to help me
understand why a kmalloc request for a buffer of 1390 bytes suddenly
ends up as an O(1) request. Unfortunately, I don't have any answers.

Larry
