From: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking
 dependency detected
Date: Mon, 11 Jan 2010 07:11:14 +0100
Message-ID: <20100111061114.GB19865@liondog.tnic>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
 <omZ8aBZReyD.A.NSH.MNlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=XPKlHOxc4qrTm7NsmVwODSqAsxy1Phyr6yhbPXP9Z94=;
        b=LSImn7M0EZJfCO2xDYj/i8n/4YDd9h0HZ9aFd+1ixyxj90vweZD5mv2Hus47nxKPA/
         3lDCDsS/VwD1Wi7YjT+4FN5VKP9F9IN/Hb0zaucJW60NVxPSi1QMUyy+jBNugSDt5ubo
         7hHDOCkxLiKeQlp4SbDbmOGm8kbNVBjfYvE1Q=
Content-Disposition: inline
In-Reply-To: <omZ8aBZReyD.A.NSH.MNlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>

On Sun, Jan 10, 2010 at 11:32:56PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14949
> Subject		: drm_vm.c:drm_mmap: possible circular locking dependency detected
> Submitter	: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2009-12-26 9:45 (16 days old)
> References	: http://marc.info/?l=linux-kernel&m=126182073616279&w=4

Fix for that is at LKML-Reference: <m1y6kh30pi.fsf_-_-+imSwln9KH6u2/kzUuoCbdi2O/JbrIOy@public.gmane.org>

AFAIR, GregK-H will pick that one up.

-- 
Regards/Gruss,
    Boris.
