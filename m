From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15659] [Regresion] [2.6.34-rc1] [drm:i915_hangcheck_elapsed] *ERROR* Hangcheck timer elapsed... GPU hung
Date: Tue, 20 Apr 2010 21:33:00 +0200
Message-ID: <201004202133.00708.maciej.rutecki@gmail.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.zz.KSSzLB@tosh>
Reply-To: maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:reply-to:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=ryGXzIcjL0fqO235vJ6+zsT98FDB3cClUOSLo/AXACY=;
        b=xws74VTFFeB43ZayyCnaEOxBkLSaq0Ja4z7x7yom6WaogFwKPpLBxAgv1/2WzIkrAb
         N9MHog5evbK8mOU3T0mIx/SZ//dVr9llQZgPCyhzHwinx2P3JJcxkkvtNM+PN0HotCmi
         LHyzCQF1hk6K5GrixLAauXzPu505A2pXMSAso=
In-Reply-To: <YeFfFNFyTSF.A.zz.KSSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On wtorek, 20 kwietnia 2010 o 05:19:20 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the
>  tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15659
> Subject		: [Regresion] [2.6.34-rc1] [drm:i915_hangcheck_elapsed] *ERROR*
>  Hangcheck timer elapsed... GPU hung Submitter	: Maciej Rutecki
>  <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-03-25 20:04 (26 days old)
> Message-ID	: <201003252104.24965.maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=126954749618319&w=2
> 

Bug still exists in 2.6.34-rc4
-- 
Maciej Rutecki
http://www.maciek.unixy.pl
