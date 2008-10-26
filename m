From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Sun, 26 Oct 2008 14:20:47 +0300
Message-ID: <20081026112047.GC7639@localhost>
References: <3ZqdCuOdOqB.A.EPE.fJ6AJB@chimera> <gLTYxg3cC1.A.csF.wK6AJB@chimera> <20081026071132.GB7639@localhost> <200810261203.43348.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=O4hc4CvCLOaj+qSf2QX+y5xMSBKhum8uP2BqSSJ2yso=;
        b=hm1jC0g3VOOx7gUeaoyRutSMhJZRoXVM1/AqD9oJd2QHUa45e0xuLo9iCdjsLRpeo4
         NrD/Rl5M1li8ectry+y9QI9+RKvCZ8eKNWOCeXtEiUpyYvf/cjgwyQillZyrtx8dbYzD
         cNU3aURlEYPoyvR59qfO1H3DEFfzCHTEtYjio=
Content-Disposition: inline
In-Reply-To: <200810261203.43348.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sun, Oct 26, 2008 at 12:03:42PM +0100]
| On Sunday, 26 of October 2008, Cyrill Gorcunov wrote:
| > [Rafael J. Wysocki - Sat, Oct 25, 2008 at 11:07:49PM +0200]
| > | This message has been generated automatically as a part of a report
| > | of regressions introduced between 2.6.26 and 2.6.27.
| > | 
| > | The following bug entry is on the current list of known regressions
| > | introduced between 2.6.26 and 2.6.27.  Please verify if it still should
| > | be listed and let me know (either way).
| > | 
| > | 
| > | Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11543
| > | Subject		: kernel panic: softlockup in tick_periodic() ???
| > | Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
| > | Date		: 2008-09-11 16:46 (45 days old)
| > | References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| > | Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| > | 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| > | 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| > | 
| > | 
| > 
| > It's still there but with completely out of 'subject' problems.
| 
| OK, what subject will be more appropriate?
| 
| Rafael
| 

Not sure Rafael -- now Joshua have different type
of kernel errors -- and NULL deref and do_IRQ hang.
Joshua?

		- Cyrill -
