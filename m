From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [BISECTED] 20 ACPI interrupts per second on EEEPC 4G
Date: Mon, 13 Apr 2009 19:42:01 +0100
Message-ID: <49E38779.9060705@tuffmail.co.uk>
References: <49DF6835.9040501@tuffmail.co.uk> <49DFE345.3010109@gmail.com> <49E05F83.2090500@tuffmail.co.uk> <49E20EBA.2090708@tuffmail.co.uk> <1239588248.5564.19.camel@localhost.localdomain> <49E3085D.3060403@tuffmail.co.uk> <20090413170531.GA13188@srcf.ucam.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=iZx0YcSWpOscaOOH95QlFEbua6Q0GeWUP8DRgY4MKeY=;
        b=bLZSykEZb/KWctKvWXMg1vvjHaMd2fpOtrNqATKUbyeo9LBVlRmREs+zczDT9z6TYr
         dnhz3MvqcBDJ0u5csZEor8xlDmdJ2/bapvymwBpQFiTbtY7zzEzrFLdpIkAigqu5rrUB
         5ZrqaOj+LmlzI3acj9e96MKFWnZ09vkSPMa50=
In-Reply-To: <20090413170531.GA13188-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Cc: yakui_zhao <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alexey Starikovskiy <aystarik-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Matthew Garrett wrote:
> Ok, I think I've got it. Does this fix things? Ridiculous thinko...
>
> diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
> index 9cd15e8..564ea14 100644
> --- a/drivers/acpi/thermal.c
> +++ b/drivers/acpi/thermal.c
> @@ -909,7 +909,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
>  			thermal_zone_device_register("acpitz", trips, tz,
>  						     &acpi_thermal_zone_ops,
>  						     0, 0, 0,
> -						     tz->polling_frequency);
> +						     tz->polling_frequency*100);
>  	if (IS_ERR(tz->thermal_zone))
>  		return -ENODEV;
>  
>
>   

Yup, that does it.

Thanks!
Alan
