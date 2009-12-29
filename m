From: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14905] kernel BUG at kernel/timer.c:951!
Date: Tue, 29 Dec 2009 19:35:23 +0100
Message-ID: <20091229183522.GB3081@del.dom.local>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
 <srmJ8vMxKPH.A.2YB.JwhOLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=oWn0y1a7zlyJYU02iLkxabx7O7PTHNQ/7KG03rJ77dE=;
        b=or6BTHH0xwN0K4YTEs/xngR5TmPUYFpYzpC1sUc/15Kh6QTY2PgqPbQkEVsTJKFhX+
         b43TG8hcStSx7YS1dUKwtjGA4brbaS6bs5e9Ss5idO8FpvelTW5imSbqCvGm0nPNGKmI
         ibihF3KyziWtUxOmUcl/h0EzIkrkLHIruIx84=
Content-Disposition: inline
In-Reply-To: <srmJ8vMxKPH.A.2YB.JwhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bernard Pidoux <bernard.pidoux-ZwCu/HtLMzI@public.gmane.org>

On Tue, Dec 29, 2009 at 04:28:54PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14905
> Subject		: kernel BUG at kernel/timer.c:951!
> Submitter	: Bernard Pidoux <bernard.pidoux-ZwCu/HtLMzI@public.gmane.org>
> Date		: 2009-12-19 13:38 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=126122997831460&w=4
> Handled-By	: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> 

If this is what I think, then it's a "regular" bug, not a regression.

Jarek P.
