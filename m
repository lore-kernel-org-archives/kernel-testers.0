From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: usual_tables: module license 'unspecified' taints kernel.
Date: Wed, 08 Apr 2009 17:44:49 +0100
Message-ID: <49DCD481.1050104@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=lRh7M9NjCDKVZxF8J/Js0ki3GEFPmqms0lF1it/AT+Q=;
        b=PIsFQtTi6hlpyrGg/0V1wiyeS/XpB+lU+3eu/OfAS/tm3hwZGjfWBL9+E7icJatq3/
         JbOCk6s9SaP4Mc+K00RoneERH6Vbwx9n/oc6qFoYPTLrYH7T7WVAk6xgHtHioLOR6CJZ
         eZfeFBTNMBLKjosOoj++Fz9gNIVVnLNR2yrhw=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: usb-storage-ijkIwGHArpdIPJnuZ7Njw4oP9KaGy4wf@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi, I see this regression in v2.6.30-rc1.  I end up with a module 
"usual_tables.ko", which is loaded on boot and causes the kernel to 
complain about an unspecified license.  See subject for the exact error 
message.

I have

CONFIG_USB_STORAGE=m
CONFIG_USB_LIBUSUAL=y

Also, usb-storage doesn't seem to get loaded automatically, as it did in 
2.6.29 with the same configs.

Thanks
Alan
