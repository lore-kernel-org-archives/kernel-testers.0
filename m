From: "Yudha Harimantoro T" <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Error on Make Modules [2.6.27-rc1]
Date: Fri, 1 Aug 2008 13:06:33 +0700
Message-ID: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=zngaP2zewsebmL3iYzl+fF3K7yb/f/B4uY1FCgArJY4=;
        b=MEu2bkGQgLSh11fKnUa+/nw0bCW0sSAWRXPRLKIH8vPhkkFP10t1Es+j9wNAYA0NsX
         n8Wr8ydjVSCk5XGux4vsOTICPKmElwKQIsGeCxINIU2V25bGL5+CeA3LAT8GOqXOa4T9
         wDtqW7z9orxUk6b/upYMliclwRda5Dkk4Fe6I=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi,
I make with 2.6.27-rc1 with my oldconfig.

I build the kernel and there's error on modules.
Errors :
-----------------------------------------------------------------------
root@system:/usr/src/linux# make
...................
...................
CC      net/xfrm/xfrm_ipcomp.mod.ko
LD [M] net/xfrm/xfrm_ipcomp.ko
make[1]: Nothing to be done for `__fw_modbuild'.
root@system:/usr/src/linux# make modules
  CHK     include/linux/version.h
  CHK     include/linux/utsrelease.h
  CALL    scripts/checksyscalls.sh
  Building modules, stage 2.
  MODPOST 545 modules
make[1]: Nothing to be done for `__fw_modbuild'.
root@system:/usr/src/linux#
-----------------------------------------------------------------------

Best regards,
Yudha_HT
