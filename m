From: Matthew Garrett <mjg59@srcf.ucam.org>
Subject: Re: [BISECTED] 20 ACPI interrupts per second on EEEPC 4G
Date: Mon, 13 Apr 2009 18:05:31 +0100
Message-ID: <20090413170531.GA13188@srcf.ucam.org>
References: <49DF6835.9040501@tuffmail.co.uk> <49DFE345.3010109@gmail.com> <49E05F83.2090500@tuffmail.co.uk> <49E20EBA.2090708@tuffmail.co.uk> <1239588248.5564.19.camel@localhost.localdomain> <49E3085D.3060403@tuffmail.co.uk>
Mime-Version: 1.0
Return-path: <linux-acpi-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <49E3085D.3060403@tuffmail.co.uk>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Cc: yakui_zhao <yakui.zhao@intel.com>, Zhang Rui <rui.zhang@intel.com>, Alexey Starikovskiy <aystarik@gmail.com>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Ok, I think I've got it. Does this fix things? Ridiculous thinko...

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index 9cd15e8..564ea14 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -909,7 +909,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
 			thermal_zone_device_register("acpitz", trips, tz,
 						     &acpi_thermal_zone_ops,
 						     0, 0, 0,
-						     tz->polling_frequency);
+						     tz->polling_frequency*100);
 	if (IS_ERR(tz->thermal_zone))
 		return -ENODEV;
 

-- 
Matthew Garrett | mjg59@srcf.ucam.org
