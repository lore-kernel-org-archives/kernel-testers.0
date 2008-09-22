From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Mon, 22 Sep 2008 10:01:57 +0400
Message-ID: <20080922060157.GA7663@localhost>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.zJH.p0q1IB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=ByxPVhll6b4VGNvS3zYiXzCj9E7zSytkU50Pa1DPKUc=;
        b=SV5PmLmiEyr42HOG01BHQILx3kycTisDiVKUo4R62eWvz16CvdvPnt7RZFUakVVISd
         8X0aQN8WqiX3/mvYlOHyT1OTIA1xwKt9yvnxHvTGVSoateMNoHlbrVAuRzMEeyD9ON/0
         YHerl3GBnTQ4OhgPHb69cTzKgLDnUWWvvzH0g=
Content-Disposition: inline
In-Reply-To: <7lIhZC4hCxE.A.zJH.p0q1IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sun, Sep 21, 2008 at 08:54:19PM +0200]
| This message has been generated automatically as a part of a report
| of recent regressions.
| 
| The following bug entry is on the current list of known regressions
| from 2.6.26.  Please verify if it still should be listed and let me know
| (either way).
| 
| 
| Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11543
| Subject		: kernel panic: softlockup in tick_periodic() ???
| Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
| Date		: 2008-09-11 16:46 (11 days old)
| References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| 
| 

There are really multiple issues touched in report. nmi_watchdog
hangs, rtc device creation, NULL deref...

I've asked Joshua for more information. Since he must to use
netdev tree for a while maybe we could wait 'till next merge
window will be closed and check if nmi_watchdog does work.
So the work in progress.

		- Cyrill -
