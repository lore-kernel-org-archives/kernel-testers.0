From: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11191] 2.6.26-git8: spinlock lockup in c1e_idle()
Date: Tue, 19 Aug 2008 01:45:44 +0400
Message-ID: <20080819014544.390ff3c2@gmail.com>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
	<sNRO-BDDjQL.A.ugH.CdzpIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=j9aZkZpQvHuYtzr+IxcimEWg0RVHMI4RQvOBYFERsho=;
        b=LdjoUeWapRA13KETGoxGtpJWisjCaeipseUxlW6teLgUm2hSpZmiF71131rS5NPEFS
         p3eI3qRr7etddGC5KK2yKwu8YklaNFfTnvWcgnj/OFaHegdtPoAaSNT+a7kWzCGKKEcE
         EqZFDyRp9Q57pLgsYwuGnLa/6DsmyQXCVe28k=
In-Reply-To: <sNRO-BDDjQL.A.ugH.CdzpIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

As of 2.6.26-rc3-git3 bug still exist.
It affect both i386 and x86_64 architectures.

Mikhail

On Sat, 16 Aug 2008 21:02:46 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11191
> Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
> Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-07-24 03:22 (24 days old)
> References	: http://lkml.org/lkml/2008/7/23/317
> Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> 
> 
