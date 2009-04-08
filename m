From: "Edwin van den Oetelaar (via gmail.com)" 
	<oetelaar.automatisering-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.29.1 to 2.6.30rc1 upgrade breaks my hotplug (and how I fixed
 it)
Date: Wed, 08 Apr 2009 17:00:56 +0200
Message-ID: <49DCBC28.5070301@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :organization:user-agent:mime-version:to:subject:content-type
         :content-transfer-encoding;
        bh=BRyMEWBtkPdiW3OGc1phZh004qVxRvxhBNhAKJMYdl0=;
        b=SdVHVBvGLhHjseiUxtqSWMEUlzlcObTUrP2j1yZarD6KFMZwPkrTag2NYHdiC7KhQD
         xFc70lpoS/Fgzm4BcaT+RHrTmRB45aU8Ui7BRnrcxAOcApZ01jTiooV7dGUgq8AXxs0+
         Aipu6QmVbY864PdNEooN4dZ3ukN7oORGEKX0I=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Someone changed
/lib/kobject_uevent.c

To do stuff more parallel,

@@ -248,7 +258,7 @@
                        goto exit;

                retval = call_usermodehelper(argv[0], argv,
-                                            env->envp, UMH_WAIT_EXEC);
+                                            env->envp, UMH_NO_WAIT);
        }

This breaks my hotplug, it only gets called once about every 500 events.
Changing UMH_NO_WAIT back to UMH_WAIT_EXEC again fixed my hotplug problems.

I used i686 kernel with /sbin/mdev handler (busybox system)
gcc version 4.1.2 20061115 (prerelease) (Debian 4.1.1-21)


Best regards,
Edwin van den Oetelaar (Netherlands)
