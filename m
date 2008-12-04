From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12162] Commit 7cd5b08be3 breaks startup on Toshiba Portege
 R500
Date: Wed, 3 Dec 2008 16:34:39 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0812031632420.3256@nehalem.linux-foundation.org>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.bmG.moxNJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bfPM5B8Tx2B.A.bmG.moxNJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>


Rafael, I'm assuming my one-liner patch fixes your problem too, since you 
attached the patch to the bugzilla entry. So I committed it as such. But 
if it doesn't, we'll need to do something else.

The commit ended up being as appended..

		Linus
---
From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date: Wed, 3 Dec 2008 16:20:19 -0800
Subject: [PATCH] iTCO_wdt: fix typo when setting TCO_EN bit

The code used '&= 0x00002000' when it tried to set the TCO_EN bit, which
obviously didn't set that bit at all, but instead just reset all the
other bits in the SMI_EN register.

This bug seemingly caused various random behavior, with Frans Pop
reporting that X.org just silently hung at startup and Rafael Wysocki
reports the fan spinning with full speed.

See
	http://lkml.org/lkml/2008/12/3/178
	http://bugzilla.kernel.org/show_bug.cgi?id=12162

The problem seems to have been triggered by "[WATCHDOG] iTCO_wdt :
problem with rebooting on new ICH9 based motherboards" (commit
7cd5b08be3c489df11b559fef210b81133764ad4), but the bogus code existed
before that too (in the "supermicro_old_pre_stop()" function), it just
apparently never showed up due to different logic.

In that commit the broken code got moved around and now gets executed
much more.

Reported-by: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Tested-by: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Wim Van Sebroeck <wim-IQzOog9fTRqzQB+pC5nmwQ@public.gmane.org>
Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
---
 drivers/watchdog/iTCO_wdt.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/watchdog/iTCO_wdt.c b/drivers/watchdog/iTCO_wdt.c
index 26173a2..5b395a4 100644
--- a/drivers/watchdog/iTCO_wdt.c
+++ b/drivers/watchdog/iTCO_wdt.c
@@ -392,7 +392,7 @@ static int iTCO_wdt_stop(void)
 
 	/* Bit 13: TCO_EN -> 1 = Enables the TCO logic to generate SMI# */
 	val32 = inl(SMI_EN);
-	val32 &= 0x00002000;
+	val32 |= 0x00002000;
 	outl(val32, SMI_EN);
 
 	/* Set the NO_REBOOT bit to prevent later reboots, just for sure */
