From: Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12667] Badness at kernel/time/timekeeping.c:98 in pmud (timekeeping_suspended)
Date: Mon, 16 Feb 2009 23:47:00 +1300
Message-ID: <87d4di1wwr.fsf@burly.wgtn.ondioline.org>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	<sWhNs83kKPE.A.p4D.L20jJB@chimera>
	<878wognj00.fsf@burly.wgtn.ondioline.org>
	<200902142342.59186.rjw@sisk.pl>
	<87hc2u26m5.fsf@burly.wgtn.ondioline.org>
	<1234775410.26036.122.camel@pasglop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1234775410.26036.122.camel@pasglop> (Benjamin Herrenschmidt's
	message of "Mon, 16 Feb 2009 20:10:10 +1100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org> writes:

> On Mon, 2009-02-16 at 20:17 +1300, Paul Collins wrote:
>> It turns out I didn't test this properly.  The warning is only
>> triggered
>> when I close and open the lid, not when I run 'snooze' to suspend and
>> hit Return to resume, as I did for my so-called testing of 2.6.29-rc4.
>> 
>> Whatever is triggering the warning is still present in 2.6.29-rc5.
>
> Right, we probably need to stop sending input events from the PMU driver
> when it's "suspended".
>
> Ping me if I don't produce a patch tomorrow (ie, I forgot :-)

Just for laughs I slapped together the following, which seems to do the
job, although not especially tidily.


diff --git a/drivers/macintosh/via-pmu-event.c b/drivers/macintosh/via-pmu-event.c
index 25cd565..33c4b45 100644
--- a/drivers/macintosh/via-pmu-event.c
+++ b/drivers/macintosh/via-pmu-event.c
@@ -23,6 +23,7 @@
 #include <linux/input.h>
 #include <linux/adb.h>
 #include <linux/pmu.h>
+#include <linux/bug.h>
 #include "via-pmu-event.h"
 
 static struct input_dev *pmu_input_dev;
@@ -56,24 +57,62 @@ static int __init via_pmu_event_init(void)
 	return err;
 }
 
+static bool lid_event_pending;
+static int lid_event_pending_down;
+static bool power_button_event_pending;
+static int power_button_event_pending_down;
+
 void via_pmu_event(int key, int down)
 {
 
 	if (unlikely(!pmu_input_dev))
 		return;
 
-	switch (key) {
-	case PMU_EVT_POWER:
-		input_report_key(pmu_input_dev, KEY_POWER, down);
-		break;
-	case PMU_EVT_LID:
-		input_report_switch(pmu_input_dev, SW_LID, down);
-		break;
-	default:
-		/* no such key handled */
-		return;
-	}
+	if (!pmu_sys_suspended) {
+		switch (key) {
+		case PMU_EVT_POWER:
+			input_report_key(pmu_input_dev, KEY_POWER, down);
+			break;
+		case PMU_EVT_LID:
+			input_report_switch(pmu_input_dev, SW_LID, down);
+			break;
+		default:
+			/* no such key handled */
+			return;
+		}
+
+		input_sync(pmu_input_dev);
+	} else {
+		switch (key) {
+		case PMU_EVT_POWER:
+			power_button_event_pending = true;
+			power_button_event_pending_down = down;
+			break;
+		case PMU_EVT_LID:
+			lid_event_pending = true;
+			lid_event_pending_down = down;
+			break;
+		default:
+			/* no such key handled */
+			return;
+		}
+	}		
+}
 
+void via_pmu_event_resume(void)
+{
+	WARN_ON(pmu_sys_suspended);
+
+	if (power_button_event_pending) {
+		input_report_key(pmu_input_dev, KEY_POWER,
+				 power_button_event_pending_down);
+		power_button_event_pending = false;
+	}
+	if (lid_event_pending) {
+		input_report_switch(pmu_input_dev, SW_LID,
+				    lid_event_pending_down);
+		lid_event_pending = false;
+	}
 	input_sync(pmu_input_dev);
 }
 
diff --git a/drivers/macintosh/via-pmu-event.h b/drivers/macintosh/via-pmu-event.h
index 72c54de..2754adc 100644
--- a/drivers/macintosh/via-pmu-event.h
+++ b/drivers/macintosh/via-pmu-event.h
@@ -4,5 +4,6 @@
 #define PMU_EVT_POWER	0
 #define PMU_EVT_LID	1
 extern void via_pmu_event(int key, int down);
+extern void via_pmu_event_resume(void);
 
 #endif /* __VIA_PMU_EVENT_H */
diff --git a/drivers/macintosh/via-pmu.c b/drivers/macintosh/via-pmu.c
index b40fb9b..01b8689 100644
--- a/drivers/macintosh/via-pmu.c
+++ b/drivers/macintosh/via-pmu.c
@@ -2479,6 +2479,8 @@ static int pmu_sys_resume(struct sys_device *sysdev)
 	pmu_resume();
 	pmu_sys_suspended = 0;
 
+	via_pmu_event_resume();
+
 	return 0;
 }
 


-- 
Paul Collins
Wellington, New Zealand

Dag vijandelijk luchtschip de huismeester is dood
