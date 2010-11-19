From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #21332] Regression in single stepping over hardware
	breakpoint (Wine)
Date: Fri, 19 Nov 2010 15:56:54 +0100
Message-ID: <20101119145651.GB5558@nowhere>
References: <tTUH_XeInOH.A.dMF.c3b5MB@chimera> <t78YtCSuOqN.A.gEG.I4b5MB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=evMqidigJY3D21BVMHmm/qsPSgQb1yI60BkBYpJg0TM=;
        b=r9vyClGqtxY6bX3K7OxWlbkE+DAMH+u93cdxy286E15jdhOY5tmwhT6o3yzQPuXXeG
         P4xtV0H3c13dvFEG4ROKX9zlW3uHaZOSmiGHUNqGoGk/g9rqqYsWOlPjoWEJoc4Opx4c
         cbBb/cQDGXCDd8WC8EOjNUBpktUXzEnicEPzE=
Content-Disposition: inline
In-Reply-To: <t78YtCSuOqN.A.gEG.I4b5MB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Fri, Nov 19, 2010 at 12:53:38AM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.35 and 2.6.36.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=21332
> Subject		: Regression in single stepping over hardware breakpoint (Wine)
> Submitter	: Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2010-10-27 23:41 (23 days old)
> First-Bad-Commit: http://git.kernel.org/linus/0c4519e825c9e2b6a8310deff8582f8c35bfbba9


The fix is in:

git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git
	perf/urgent

6c0aca288e726405b01dacb12cac556454d34b2a
("x86: Ignore trap bits on single step exceptions")

And should reach mainline soon.

Thanks.
