From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Regression: active uvcvideo breaks over suspend
Date: Wed, 15 Apr 2009 11:12:03 +0100
Message-ID: <49E5B2F3.4080502@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=O6PVktoPRnpIy5HE6e7JEw7KUPA+y8mDuqBA5AoQmas=;
        b=skxwGdXj6FDAescg285fMJ9qu+1ArxACB+doIQB4m35z1RLetwA8Z2kF800uqAOjqp
         PRnISIF3hEK0YOoBW1sA47J+tkqlR1sez4OBsJcQV20EJV5pyKUWvDNLZEAXa5Gq2HTH
         HtWd3kh6GcEJswTJFS5ht6yjMZJwMChwtxZUQ=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-uvc-devel-0fE9KPoRgkgATYTw5x5z8w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
Cc: USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I found this in v2.6.30-rc2.  I haven't tested beyond that.  I'm sure it 
didn't happen in 2.6.29.

If I run "xawtv" and then suspend, it stops working on resume; the xawtv 
display goes black and the camera LED stays off.  When I close xawtv, 
the LED blinks on then off again.  If I then try to run xawtv again, it 
works fine.

In dmesg (after resume) I see

[  562.884298] usb 1-8: type resume
[  562.990014] usb 1-8: reset high speed USB device using ehci_hcd and 
address 3
[  563.665921] restoring control 00000000-0000-0000-0000-000000000101/0/2
[  563.665935] restoring control 00000000-0000-0000-0000-000000000101/1/3
[  563.665948] restoring control 00000000-0000-0000-0000-000000000101/3/7
[  563.666412] uvcvideo 1-8:1.1: reset_resume error -12

Thanks in advance
Alan
