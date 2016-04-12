From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] watchdog: dw_wdt: dont build for avr32
Date: Tue, 12 Apr 2016 11:21:43 +0530
Message-ID: <1460440303-20640-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=3g4OCNkPoQv+KpVDTTcsYSWT16WguDPOSiz1fdER6E8=;
        b=wwUUK/AytDCLMNAui7IDJvCuMWR80pkuJ/v98BXv5JAzSsPfUk8nEPuNaQWL/u5lC7
         L3SZ3ZqgxDUQWj2WEe6TeWxrnela3wVfFtyI+BEn051ntxvz2XSeC+eNM0Mi6WD8LmeI
         dZndK7HO8ilKPS2xXUw0TqPEfdDKy4TW3szNXy3pbFKzFNqQJ9v4qWZiZMEfqRte/AXX
         PylszW7bzMqmg/Uj0BQpDrb+p7emuJZ2kzP0r4YxbDfLNov6nF+GksiWdqH8yB9+iQEv
         uSzqvgC8JMmOHfgn8jAaBNkeh9YMios608/DX+fRB3h+wO1PdHq7H9QCMPeU9QaQdgYs
         JdFg==
Sender: linux-watchdog-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>, Haavard Skinnemoen <hskinnemoen-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans-Christian Egtvedt <egtvedt-BrfabpQBY5qlHtIdYg32fQ@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-watchdog-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

The build of avr32 allmodconfig fails with the error:
ERROR: "__avr32_udiv64" [drivers/watchdog/kempld_wdt.ko] undefined!

Exclude this driver from the build of avr32.

Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
---

avr32 build log is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/122158665

 drivers/watchdog/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index fb94765..61041ba 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -981,7 +981,7 @@ config HP_WATCHDOG
 
 config KEMPLD_WDT
 	tristate "Kontron COM Watchdog Timer"
-	depends on MFD_KEMPLD
+	depends on MFD_KEMPLD && !AVR32
 	select WATCHDOG_CORE
 	help
 	  Support for the PLD watchdog on some Kontron ETX and COMexpress
-- 
1.9.1

--
To unsubscribe from this list: send the line "unsubscribe linux-watchdog" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
