From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Sat, 4 Oct 2008 23:44:39 +0400
Message-ID: <20081004194439.GB16961@localhost>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.M0H.c575IB@wind>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=9Ix83xU9p4oWs3KilTTR3MSk70714S+wktZM3db5Dqg=;
        b=l1fIfismOO42vphfYe1wkGgYmm33jHMGJh9mvg45TtXGXLSA+4JQKzcnYuCRxjbUxJ
         XVnBGsEH3phOqsWDjX1tx3yrFwHZtUhS6qBrCKVQUzma+2uoWEPGvlIFWTkuHn8JrtDZ
         iS+zvtgtGzxDaBm9sOTP4q/lpzdDV+wqipqd4=
Content-Disposition: inline
In-Reply-To: <yWwteD.A.M0H.c575IB@wind>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sat, Oct 04, 2008 at 07:32:52PM +0200]
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
| Date		: 2008-09-11 16:46 (24 days old)
| References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| 
| 

Joshua is testing -rc8 now. He said (in bugzilla entry):
>
> -rc8 proved itself stable for a few days on two test nodes and it's being
> rolled out onto 32 nodes production nodes as I type this.  The bug strikes
> somewhat randomly so it'll take time for it to pop up in -rc8 if it's still
> there.  Heavy jobs will be running over the weekend and should trip this
> issues if it's still in there...
>

So we're waiting for his verdict.

		- Cyrill -
