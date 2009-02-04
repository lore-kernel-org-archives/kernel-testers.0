From: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12511] WARNING: at drivers/dma/dmaengine.c:352
Date: Wed, 4 Feb 2009 09:03:00 -0700
Message-ID: <e9c3a7c20902040803p12ffe0bcrced5249c4b667623@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.dvF.SvYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=DHtT4IPhbLYLeJhn/mDwavCgMgWtdP9EKWcrHmTBMEk=;
        b=iHbv1xrUhx95WseTXk5nMRptjEkvleLxJUm3O7xNkGJjOFyNCFA7xs2/e8DaXCGx1y
         1B6dPPRQw6LBjgNz7KgrGXuErmtzNOhOyhtYVgBUgJ8MlXa8u29YK2ddnKGg2JVmYa3V
         Hwwb2nytPd02QZUSZyX/8wBwinnN+vmx/CV/4=
In-Reply-To: <pWZw1SZjMCH.A.dvF.SvYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Wed, Feb 4, 2009 at 3:24 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>

This should be resolved as of commit 83436a05 "dmaengine: kill some
dubious WARN_ONCEs"

Thanks,
Dan
