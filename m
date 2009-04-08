From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: usual_tables: module license 'unspecified' taints kernel.
Date: Wed, 08 Apr 2009 17:56:24 +0100
Message-ID: <49DCD738.1080002@tuffmail.co.uk>
References: <49DCD481.1050104@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ae5TCm/gROLxBL11RzRyoBrHmMtUGKywoRp6R0PNcPw=;
        b=RrhKdf8v0WE+KZZmxfSXv4zQYIHcSqEWHSExRqo+hOVoy7xEv4RE9mANu9ThYhWDf/
         KNEaIwB3KuaS/Y/T+WfQnKL6Qeu7caWm58Z062IKniiBau01wzkmRs9OpGZIPFhaWjVc
         cGII3jixwsW2HPvWnkJUou74d7U8mKGvkJ2Zw=
In-Reply-To: <49DCD481.1050104-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: usb-storage-ijkIwGHArpdIPJnuZ7Njw4oP9KaGy4wf@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alan Jenkins wrote:
> Hi, I see this regression in v2.6.30-rc1.  I end up with a module
> "usual_tables.ko", which is loaded on boot and causes the kernel to
> complain about an unspecified license.  See subject for the exact
> error message.
>
> I have
>
> CONFIG_USB_STORAGE=m
> CONFIG_USB_LIBUSUAL=y
>

> Also, usb-storage doesn't seem to get loaded automatically, as it did
> in 2.6.29 with the same configs.
>
Hmm, seems someone else broke request_module().  So don't worry about
this last issue - I'm sure it will get fixed :-).
