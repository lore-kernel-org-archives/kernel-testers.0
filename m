From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10955] v2.6.26-rc7: BUG task_struct: Poison overwritten
Date: Sun, 13 Jul 2008 21:29:14 +0200
Message-ID: <19f34abd0807131229u45808531pdcbb9cd8b439c436@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.zd.EIleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=t2Esas1hug+CqcVKP7/NZpuTbstxC+XBjG8jkyjuVyE=;
        b=oX1vHYCKLyfKei4Ue7bt4o9dzA/mwB8QWc0nyPcmccMhvhRijniCvHMaYxdh0vt2iV
         //rB/a9YHjTSv3Ba7FimmrwXX+JFmN0w+tcNSEpeNZ1Gx5DSx8N0/UuSj9aZQImfVjdJ
         ED2L8KKCYa6KHNqAWnYR7wPb2fdq1+k/0mi9k=
In-Reply-To: <c6ZRbn0adb.A.zd.EIleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

Hi,

On Sun, Jul 13, 2008 at 8:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10955
> Subject         : v2.6.26-rc7: BUG task_struct: Poison overwritten
> Submitter       : Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-06-21 19:24 (23 days old)
> References      : http://marc.info/?l=linux-kernel&m=121407641925121&w=4
> Handled-By      : Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

We've seen a rather lot of fixes for cpu hotplug and the scheduler
over the last few weeks. I'm suspecting that this one might also have
been fixed unknowingly by one of the other commits (this is backed by
the fact that I haven't been able to reproduce _any_
cpu-hotplug-related failure as of the latest mainline kernel), on the
other hand I don't know exactly why.

I guess I should run a longer test to see if this comes up again.

(Oh, maybe it was an RCU-type thing? Nick Piggin recently had a patch
that fixed some RCU error. Peter?)


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
