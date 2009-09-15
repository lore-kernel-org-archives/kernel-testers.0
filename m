From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Tue, 15 Sep 2009 16:45:37 -0700 (PDT)
Message-ID: <alpine.DEB.1.00.0909151642100.24059@chino.kir.corp.google.com>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <200909080112.14997.rjw@sisk.pl> <20090908194653.GA3517@roeckx.be> <200909102259.15144.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1253058346; bh=tgvtOARu0771DV5v4JiLE3Tue5Q=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=qP/A/omSvzdPWMvD0A/jtN7LrGVFNgK
	PJpOPx9XvYoGNsH88TvdRxv3hv11N03E6gYpiIuwpM8D/jrx56b+fZQ==
In-Reply-To: <200909102259.15144.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>, Naga Chumbalkar <nagananda.chumbalkar-VXdhtT5mjnY@public.gmane.org>

On Thu, 10 Sep 2009, Rafael J. Wysocki wrote:

> > So I did a biset, and this is the result:
> > $ git bisect good
> > 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f is first bad commit
> > commit 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f
> > Author: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > Date:   Wed Feb 4 14:37:50 2009 -0500
> > 
> >     [CPUFREQ] checkpatch cleanups for powernow-k8
> > 
> >     This driver has so many long function names, and deep nested if's
> >     The remaining warnings will need some code restructuring to clean up.
> > 
> >     Signed-off-by: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > 
> > :040000 040000 45d8e325663e62e0833cf4e1cb8b27fa4a9b3a56 affb6fab44cb22aca8a33ca0d767797831fc2bae M      arch
> > 
> > 2.6.29-rc5 is good, -rc7 is bad.
> 
> Thanks for the update and for doing the bisection.
> 

0e64a0c has this cleanup, which isn't equivalent to the previous code:

@@ -779,11 +834,12 @@ static int powernow_k8_cpu_init_acpi(struct powernow_k8_data *data)
 		goto err_out;
 	}
 
-	if ((data->acpi_data.control_register.space_id != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
-		(data->acpi_data.status_register.space_id != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
+	space_id = data->acpi_data.control_register.space_id;
+	if ((space_id != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
+		(space_id != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
 		dprintk("Invalid control/status registers (%x - %x)\n",
 			data->acpi_data.control_register.space_id,
-			data->acpi_data.status_register.space_id);
+			space_id);
 		goto err_out;
 	}
 
This got fixed in 2c701b1 in 2.6.31-rc8, so this is most likely the 
problem that Kurt was encountering.

Kurt, could you try 2.6.31 and see if you still experience the issue?  If 
not, this can be closed.
