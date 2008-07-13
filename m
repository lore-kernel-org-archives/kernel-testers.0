From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10955] v2.6.26-rc7: BUG task_struct: Poison overwritten
Date: Sun, 13 Jul 2008 21:37:00 +0200
Message-ID: <19f34abd0807131237s1494b532s577da1a208b71c2d@mail.gmail.com>
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
        bh=/XF9D2hyx5AaN4dXuoOAvJoub3nP69I62KXRJVwDf8I=;
        b=R3iCr2eClbC7z9pCNQF+L7dM7yovuUFv8Vi4D4wZgD/V85fpl9YC1DQ5vpcDoqGOmN
         oablRt6haDZ4p3bflcF7oJUO939RRq1Gk0t1OpoXkfLITP+5sVQBXjIe4RX98WxLnLeg
         kO5aWsOkcXf34znGAD50/JFoz5r3d9C93BPMo=
In-Reply-To: <c6ZRbn0adb.A.zd.EIleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sun, Jul 13, 2008 at 8:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10955
> Subject         : v2.6.26-rc7: BUG task_struct: Poison overwritten
> Submitter       : Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-06-21 19:24 (23 days old)
> References      : http://marc.info/?l=linux-kernel&m=121407641925121&w=4
> Handled-By      : Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

Oh, wait, this probably wasn't a regression in the first place. It's
probably just obscure and rare enough that it was never discovered
earlier.

I'm in favour of closing this and reopening if it reappears. Or if you
simply just want to take it out of the regression list, that's also
fine with me.


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
