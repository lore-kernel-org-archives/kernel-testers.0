From: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking
 dependency detected
Date: Mon, 25 Jan 2010 09:28:24 +0100
Message-ID: <20100125082824.GA5391@liondog.tnic>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
 <hE3x9c-4KZM.A.NoG.4KMXLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XN66MaHvacl/ZOnEinLjQuEcLjQSq5aOX0UBDBuaDL4=;
        b=W81rZTJF3qhilXyplhftjAwSUzEFjy6uSOmYORldg00bTnCVY39buYJj9P9L4wXESG
         kkpN+lyGCvE4/3gHjN8Pw+5e1mZpS92ui9+yEMC8Sl4kDl8Yak/H3crIVmAR7ENcNm54
         LkS5Z8pcAsNEds7Y1vmHpxlgw0e70Z0IKZUIo=
Content-Disposition: inline
In-Reply-To: <hE3x9c-4KZM.A.NoG.4KMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, "Eric W. Biederman" <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>

On Sun, Jan 24, 2010 at 11:04:33PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).

Yep, this one is fixed by the patch below. Thanks.

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14949
> Subject		: drm_vm.c:drm_mmap: possible circular locking dependency detected
> Submitter	: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2009-12-26 9:45 (30 days old)
> References	: http://marc.info/?l=linux-kernel&m=126182073616279&w=4
> Handled-By	: Eric W. Biederman <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/70461/

-- 
Regards/Gruss,
    Boris.
