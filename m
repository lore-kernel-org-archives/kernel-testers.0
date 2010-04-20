From: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15795] 2.6.34-rc4 : OOPS in unmap_vma
Date: Tue, 20 Apr 2010 16:24:00 -0400 (EDT)
Message-ID: <alpine.DEB.2.00.1004201623280.10496@parag-laptop>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.GdG.KRSzLB@tosh>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:x-x-sender:to:cc
         :subject:in-reply-to:message-id:references:user-agent:mime-version
         :content-type;
        bh=jm4sAdphShFvHxIj7ZkbTOqr56r46nN0P26keFuqnj0=;
        b=msamfZjHlfNsKnGF+pX5iMc+FsxdzJBPBkIJ1uUju9EUyaVRq9226+TnG8nyQbzr8o
         Ws+tGNNtUsQcNlNkdgCYMi2p0Sso7ynk6sQx+lQHMPstGWajTOrom/4JFp+YGagwhEcU
         9cm8lyszgRIt5DymXjMZN7P3mDx+LYOCjcnsk=
In-Reply-To: <YeFfFNFyTSF.A.GdG.KRSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>



On Tue, 20 Apr 2010, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15795
> Subject		: 2.6.34-rc4 : OOPS in unmap_vma
> Submitter	: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-04-14 (6 days old)
> Message-ID	: <alpine.DEB.2.00.1004132147260.1881@parag-laptop>
> References	: http://marc.info/?l=linux-kernel&m=127121006625429&w=2
> 
> 
> 

Hasn't reproduced after many retries and I am not sure it can be called a 
regression, may be it's always been there, just not reproducible easily - 
let's close this, I will reopen if needed.

Thanks,

Parag
