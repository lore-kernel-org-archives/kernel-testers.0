From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: usual_tables: module license 'unspecified' taints kernel.
Date: Wed, 8 Apr 2009 18:31:40 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0904081829050.3138-100000@iolanthe.rowland.org>
References: <49DCD481.1050104@tuffmail.co.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49DCD481.1050104-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: usb-storage-ijkIwGHArpdIPJnuZ7Njw4oP9KaGy4wf@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, 8 Apr 2009, Alan Jenkins wrote:

> Hi, I see this regression in v2.6.30-rc1.  I end up with a module 
> "usual_tables.ko", which is loaded on boot and causes the kernel to 
> complain about an unspecified license.  See subject for the exact error 
> message.
> 
> I have
> 
> CONFIG_USB_STORAGE=m
> CONFIG_USB_LIBUSUAL=y

This looks like a mistake in the Makefile.  Does the patch below fix
the problem?

Alan Stern


Index: usb-2.6/drivers/usb/storage/Makefile
===================================================================
--- usb-2.6.orig/drivers/usb/storage/Makefile
+++ usb-2.6/drivers/usb/storage/Makefile
@@ -17,7 +17,8 @@ usb-storage-objs :=	scsiglue.o protocol.
 ifeq ($(CONFIG_USB_LIBUSUAL),)
 	usb-storage-objs	+= usual-tables.o
 else
-	obj-$(CONFIG_USB)	+= libusual.o usual-tables.o
+	obj-$(CONFIG_USB)	+= usb-libusual.o
+	usb-libusual-objs	:= libusual.o usual-tables.o
 endif
 
 obj-$(CONFIG_USB_STORAGE_ALAUDA)	+= ums-alauda.o
