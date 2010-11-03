From: Dimitris Orfanos <sirtimid-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Try to compile nv_backlight.c gets an compilation error!
Date: Wed, 3 Nov 2010 12:49:15 +0200
Message-ID: <201011031249.15609.sirtimid@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:mime-version:content-type:content-transfer-encoding
         :message-id;
        bh=sBnPwsLpSx/UzWO32izEQch9JAy8ZAR1Vy9rpQTfIr0=;
        b=MrTX5XbgB9xILFMPMvrTplDC0s/XalV9szHGwtcP/lsz7NqQZyk8EmMC+JR9QRW+am
         QQ9Z6rhfMQMmr3LSd/5XKHINuU6Byq03qL6XzrUSxfgOuREokxMbSZWHQ3blGIU0dLU5
         dyeUIHQPAJmXi2oqQntwWoStnZR6nggiAdEbM=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello,

I try to use the checkpatch.pl script on drivers/nvidia/nv_backlight.c but 
before this I tried to compile the code with make nv_backlight.o I get the 
following error:

nv_backlight.c:12:29: fatal error: linux/backlight.h: No such file or 
directory
compilation terminated.

The backlight.h file does not exist. What to do?
