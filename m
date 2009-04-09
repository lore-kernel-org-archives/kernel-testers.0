From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: usual_tables: module license 'unspecified' taints kernel.
Date: Thu, 09 Apr 2009 10:54:07 +0100
Message-ID: <49DDC5BF.8070205@tuffmail.co.uk>
References: <Pine.LNX.4.44L0.0904081829050.3138-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=po1mivClSe5+0g9/B44JbLSmc/sqVowgDBbSvcEMXUE=;
        b=Fp3/5foLzdFDQUsQ6YLkx1rkge2t7bezKt6epRZfiSqlKazhMZewugFtqCVEwc9t2a
         h0FY53WuihkPFJNQrZm6zI1+CQFFEkU164lhUFBbPUgVWRMdcxErxPIwep4k4t1xO9Qp
         XP/oUvAONrVVkqAPIDl7xhRImJ+dXikVr9WiI=
In-Reply-To: <Pine.LNX.4.44L0.0904081829050.3138-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: usb-storage-ijkIwGHArpdIPJnuZ7Njw4oP9KaGy4wf@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Stern wrote:
> On Wed, 8 Apr 2009, Alan Jenkins wrote:
>
>   
>> Hi, I see this regression in v2.6.30-rc1.  I end up with a module 
>> "usual_tables.ko", which is loaded on boot and causes the kernel to 
>> complain about an unspecified license.  See subject for the exact error 
>> message.
>>
>> I have
>>
>> CONFIG_USB_STORAGE=m
>> CONFIG_USB_LIBUSUAL=y
>>     
>
> This looks like a mistake in the Makefile.  Does the patch below fix
> the problem?
>
> Alan Stern
>   

Yes.  Thanks!
