From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Mon, 16 Mar 2009 02:24:05 +0200
Message-ID: <20090316002404.GA12662@google.com>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera> <GCLaknAim2M.A.pCF.R6BvJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=OVUfKt8IVx7hfICX/6HVHZP48VPZrSr/fXIufLXtUs8=;
        b=kGCX2hNZ3o8njBBnCLsFQzhSu4wUgtxCGOLCH4b5aWqeLCbtyrzR/WrdJb+KPqunWg
         c4Rg7EgqMiaKQ7gPV0shaU//W5wJhl7VPedxNJkwEy0dOM3MDU2Tlpgmj93m6kBN8NCQ
         pAsD7erAOh0wGVZqJWw5nm6N9Ga/XkUqgNO/Y=
Content-Disposition: inline
In-Reply-To: <GCLaknAim2M.A.pCF.R6BvJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Mar 14, 2009 at 08:05:29PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12574
> Subject		: possible circular locking dependency detected
> Submitter	: Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-29 11:35 (45 days old)
> References	: http://lkml.org/lkml/2009/2/9/205
> 

It's still there in rc8.
