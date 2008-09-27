From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick periodic()
Date: Sat, 27 Sep 2008 22:50:40 +0400
Message-ID: <20080927185040.GC10186@localhost>
References: <t_PcrlC6ypI.A.tGG.G7m3IB@albercik> <V8eU91268VO.A.nJH.A8m3IB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=GAZzrCfmCxe0kVzTPFpxW5kVYzG8VraFdaEJlNFuhvs=;
        b=G+ctGEGL1wG1PSF6gGZjXeEMobOaZOcDhmCvPTQAtMJkgCEPwOC2RW0mlixQqAMInH
         gANwmLv/HBcLA0AozYdJ1TEN97ZNJvaOfMR0amhk1Z1h/ur8GZzc5iIoe5cyNM2fUYu/
         fBmaZKROEDow7yJFOPZ8E9ZMHCRQOv6vwFw4s=
Content-Disposition: inline
In-Reply-To: <V8eU91268VO.A.nJH.A8m3IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sat, Sep 27, 2008 at 05:56:46PM +0200]
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
| Date		: 2008-09-11 16:46 (17 days old)
| References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| 
| 

Hi Rafael!

Well, Thomas already explained

| The softlockup issue itself is fixed, but there are issues with
| nmi_watchdog. I think we should remove the regression and keep the bug
| alive to chase the other issues.
|
| Thanks,
|
|        tglx

so we either have to change the topic of this bug or better
close it and post new one nmi_watchdog related. I may do so
but since Joshua was opening bug it would be better if he
make such an action. How do you think? (I've asked Joshua
for additional info but it seems he is too busy now)

		- Cyrill -
