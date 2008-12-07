From: Frederik <mailinglists.fredi-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12161] [i915 drm] irq 16: nobody cared with latest git kernels
Date: Sun, 7 Dec 2008 20:16:34 +0100
Message-ID: <200812072016.35510.mailinglists.fredi@gmail.com>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.SrG.ooxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=dbn/0RVYwZxazHyd/+aTkqM5vTUjbNHqby01gTLJl58=;
        b=lixUO+D8hIgf68Js47QqZvrGvaN16CJ/6m894h1PFSIJ+2Lwjrh+5PA4tAiEjuFiOv
         KJik4wX9+3WpuIwJXqXooUtUcTNyKLPdHmaV46TXHfnGFRpIody8HoNGyzouOmeYvcAt
         RKNQbQTfYe+X5Pl6nNJYf9OIZo4R7RYvSE8Og=
In-Reply-To: <bfPM5B8Tx2B.A.SrG.ooxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi Rafael,
On Wednesday 03 December 2008 22:58:06 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).

This regression is present on kernels newer than 2.4.28-rc3. Unfortunately it 
needs time to hit this bug so there's no easy way to bisect it ... And BTW 
there is a bugzilla entry here for this issue: 

https://bugs.freedesktop.org/show_bug.cgi?id=18609


> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12161
> Subject		: [i915 drm] irq 16: nobody cared with latest git kernels
> Submitter	: fredi ml <mailinglists.fredi-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-12-02 13:26 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=122822444615724&w=4

Thanks,
Frederik
