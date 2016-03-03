From: Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [PATCH] iio: adc: imx25-gcq: fix do_div
Date: Thu,  3 Mar 2016 18:21:53 +0530
Message-ID: <1457009513-7069-1-git-send-email-sudipm.mukherjee@gmail.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VIyeWOLkvgOEJ4etQTth+ppEWpWeOcMQU6gpkAtNQH8=;
        b=elTeC4OqydeR7k296XxsxThaBwxXoflCuuywx1bo/HCtnlT3eCl532nR8ahzkfdVuJ
         j9J+mN275wyTuCx16ynt2kaJ2UDoB4Zy7Q5IhHYtI5VZon1Dt0s3X73LWlClDPM6m2P/
         bR4BmOW4l1RxAmlA+0K+ZmuPAZNNNKPEJrk5rmthm/fSFhSy2oVutYZUTMwk1iXnlTu4
         0+LDbG6MQCvUzBdPA21E3ATTX3BnCHKaaIRMwTtLpepWDrqE4iRFvas3+GW62At28CZh
         wxBML95Uhz+cn/ykjV3eu5dAHIC9T0LwilrvjDb0an+7Qu7mpbkgfx3fgPMR98Ja0BrI
         fZiw==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Sudip Mukherjee <sudipm.mukherjee-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

We are getting build failure with tilepro allmodconfig with the error:

drivers/iio/adc/fsl-imx25-gcq.c:236:4: note: in expansion of macro 'do_div'
do_div(priv->channel_vref_mv[reg], 1000);
    ^

include/asm-generic/div64.h:198:17: note: expected 'uint64_t *
	{aka long long unsigned int *}' but argument is of type 'u32 *
	{aka unsigned int *}'

Create a temporary variable of type u64 and use that in do_div.

Signed-off-by: Sudip Mukherjee <sudip.mukherjee-4yDnlxn2s6sWdaTGBSpHTA@public.gmane.org>
---

tilepro allmodconfig build log is at:
https://travis-ci.org/sudipm-mukherjee/parport/jobs/113325889

 drivers/iio/adc/fsl-imx25-gcq.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/fsl-imx25-gcq.c b/drivers/iio/adc/fsl-imx25-gcq.c
index 2fd1927..e0636d4 100644
--- a/drivers/iio/adc/fsl-imx25-gcq.c
+++ b/drivers/iio/adc/fsl-imx25-gcq.c
@@ -174,6 +174,7 @@ static int mx25_gcq_setup_cfgs(struct platform_device *pdev,
 	struct device *dev = &pdev->dev;
 	unsigned int refp_used[4] = {};
 	int ret, i;
+	u64 temp;
 
 	/*
 	 * Setup all configurations registers with a default conversion
@@ -233,7 +234,9 @@ static int mx25_gcq_setup_cfgs(struct platform_device *pdev,
 			priv->channel_vref_mv[reg] =
 				regulator_get_voltage(priv->vref[refp]);
 			/* Conversion from uV to mV */
-			do_div(priv->channel_vref_mv[reg], 1000);
+			temp = priv->channel_vref_mv[reg];
+			do_div(temp, 1000);
+			priv->channel_vref_mv[reg] = temp;
 			break;
 		case MX25_ADC_REFP_INT:
 			priv->channel_vref_mv[reg] = 2500;
-- 
1.9.1
