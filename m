From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Sun, 6 Jul 2008 17:44:55 +0000
Message-ID: <dd18b0c30807061044w227ebce0if79cf4ea7b35b942@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.rWD.Z2LcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=DjX56rfWdgTu3nEhW2GjUPJ7oJFqssLyX5SfJFA1Iew=;
        b=gJ1IAMzUH3IV6q+4p9jvL6FXEGlHCmYhivgYdnzcRYfmIOngZwlZbh3YKcoKMY0Itn
         /+uctzwT1j7QJGab7ohDgats3do2sa+bv1P/ur9K1BPwcJNd0SFx1ozGhfxxlAFDcjmI
         Wazo5GfOd4owG1JquHC0Ulwthab0iC3mPDlNw=
In-Reply-To: <uBi7uNfg81L.A.rWD.Z2LcIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>

On Sun, Jul 6, 2008 at 11:45 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10724
> Subject         : ACPI: EC: GPE storm detected, disabling EC GPE
> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-05-16 6:17 (52 days old)
> References      : http://marc.info/?l=linux-kernel&m=121091875711824&w=4
>                  http://lkml.org/lkml/2008/5/18/168
>                  http://lkml.org/lkml/2008/5/25/195
> Patch           : http://bugzilla.kernel.org/attachment.cgi?id=16364&action=view
>                  http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>
>
>

yes;
From what I can see so far,  the reason for the gpe storm detector going off
is due to too many interrupts with the battery. As an example there was
a bug filed for the same issue with the macbook's:
https://bugzilla.novell.com/show_bug.cgi?id=301365#c10
using acpi_osi=Darwin does prevent the gpe storm detector from
going off, but you loose any info on the battery. If anybody has any ideas on
modifying any of the battery modules, or adjusting the DSDT it sure
would be appreciated.
regards;

-- 
Justin P. Mattock
