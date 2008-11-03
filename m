From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Mon, 3 Nov 2008 10:22:51 +0300
Message-ID: <20081103072251.GA16459@localhost>
References: <Sl8SUNhCbfL.A.O5H.yueDJB@chimera> <4xS1r6m15_B.A.93B.LweDJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=Am8YQOl2DOtVEs3bAWAc/YWAYcCsukK6PVeVq/nU4KU=;
        b=IeXIohnJTujkNNnAiyo8F8heP7H7R1tn2IcR39OzI6h6mTA2NhXPQhQ9qRJbGlwx+W
         jKe85QwUd2j/ZQdNc9+A86b8xIphHFSC8WahNGhOrwjRlPin1WZf4/V2WpywfniYDVpB
         i7/Mjw74g9WSvbLvj/zIvXWW3ftPxe8+0UkXg=
Content-Disposition: inline
In-Reply-To: <4xS1r6m15_B.A.93B.LweDJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sun, Nov 02, 2008 at 05:49:34PM +0100]
| This message has been generated automatically as a part of a report
| of regressions introduced between 2.6.26 and 2.6.27.
| 
| The following bug entry is on the current list of known regressions
| introduced between 2.6.26 and 2.6.27.  Please verify if it still should
| be listed and let me know (either way).
| 
| 
| Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11543
| Subject		: kernel panic: softlockup in tick_periodic() ???
| Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
| Date		: 2008-09-11 16:46 (53 days old)
| References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| 
| 

Still in progress

		- Cyrill -
