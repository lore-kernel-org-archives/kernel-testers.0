From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Mon, 9 Feb 2009 15:59:17 +0200
Message-ID: <8f53421d0902090559n26af97d0i1b8e5f5a04dd6976@mail.gmail.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.4cG.E30jJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=9ZCOcuD4x1MdmjVk2V/t+rcmmsC6KA3M7mAGxKXu94U=;
        b=trb4c7FjJ/hZZWcSU8uYVZiKl1/HDNUU5nTsaiG0wi+i9fHSBnP0Lg6NFY2aySx7c0
         o1UGoFDGqs7Z2/dcm2I1FmL4TmbPEbV6s/2Uw43NvTDnnPaHgOnkNRqqYp+9e+b6i2VA
         RTk7I0dTFP1MZ4hvvhKZ31vj8yJxiqzaggVgU=
In-Reply-To: <sWhNs83kKPE.A.4cG.E30jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I have verified that this still occurs on 2.6.29-rc4.

On Sun, Feb 8, 2009 at 9:21 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12574
> Subject         : possible circular locking dependency detected
> Submitter       : Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-29 11:35 (11 days old)
>
>
>
