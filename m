From: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Wed, 16 Sep 2009 08:47:08 +0200
Message-ID: <20090916064708.GA25472@roeckx.be>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
 <200909080112.14997.rjw@sisk.pl>
 <20090908194653.GA3517@roeckx.be>
 <200909102259.15144.rjw@sisk.pl>
 <alpine.DEB.1.00.0909151642100.24059@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.1.00.0909151642100.24059-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>, Naga Chumbalkar <nagananda.chumbalkar-VXdhtT5mjnY@public.gmane.org>

On Tue, Sep 15, 2009 at 04:45:37PM -0700, David Rientjes wrote:
> On Thu, 10 Sep 2009, Rafael J. Wysocki wrote:
> 
> > > So I did a biset, and this is the result:
> > > $ git bisect good
> > > 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f is first bad commit
> 
> 0e64a0c has this cleanup, which isn't equivalent to the previous code:

Please look at the patch I attached to the bug report.  There is
other code that is not equivalent.  It's in comment #17:
http://bugzilla.kernel.org/show_bug.cgi?id=13780#c17

And the patch itself:
http://bugzilla.kernel.org/attachment.cgi?id=23048

This patch fixes my problem.

> @@ -779,11 +834,12 @@ static int powernow_k8_cpu_init_acpi(struct powernow_k8_data *data)
>  		goto err_out;
>  	}
>  
> -	if ((data->acpi_data.control_register.space_id != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
> -		(data->acpi_data.status_register.space_id != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
> +	space_id = data->acpi_data.control_register.space_id;
> +	if ((space_id != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
> +		(space_id != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
>  		dprintk("Invalid control/status registers (%x - %x)\n",
>  			data->acpi_data.control_register.space_id,
> -			data->acpi_data.status_register.space_id);
> +			space_id);
>  		goto err_out;
>  	}
>  
> This got fixed in 2c701b1 in 2.6.31-rc8, so this is most likely the 
> problem that Kurt was encountering.
> 
> Kurt, could you try 2.6.31 and see if you still experience the issue?  If 
> not, this can be closed.

I also noticed this difference (comment #18), patched it, and
tried it.  This is not the issue.  Also note that I tested the
2.6.31-rc9 kernel which still had the problem.

The bug report might be a little confusing since after comment #18
there are older mails pasted in the bug report.


Kurt
