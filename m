From: Feng Tang <feng.tang@intel.com>
Subject: Re: R: [Bug #14886] Asus P2B-DS not detected as SMP moterboard
Date: Wed, 27 Jan 2010 11:35:20 +0800
Message-ID: <20100127113520.596bd07c@feng-i7>
References: <5550914.425471263201351807.JavaMail.defaultUser@defaultHost>
	<201001112040.45514.rjw@sisk.pl>
	<20100126155330.GA4231@rainbow>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755020Ab0A0Df2@vger.kernel.org>
In-Reply-To: <20100126155330.GA4231@rainbow>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dmitry Artamonow <mad_soft@inbox.ru>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "flinco@libero.it" <flinco@libero.it>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Arkadiusz Miskiewicz <arekm@maven.pl>, "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>, "Brown, Len" <len.brown@intel.com>

On Tue, 26 Jan 2010 23:53:30 +0800
Dmitry Artamonow <mad_soft@inbox.ru> wrote:


> Hi!
> I'm also using P2B-DS and can confirm that starting with kernel 2.6.32
> SMP stopped working (and don't work still - tested with current git
> v2.6.33-rc5-238-g158c168) The issue seems to have something to do
> with the fact that ACPI is blacklisted on P2B-DS. I used to
> workaround this bug on newer kernels (>=2.6.32) by passing
> "acpi=force" in kernel arguments. Finally, yesterday I found some
> time to write simple automated bisection script and leaved it to run
> on machine overnight. Here's result:
> ---------------------------------------------------------------------------
> e5b8fc6ac158f65598f58dba2c0d52ba3b412f52 is the first bad commit
> commit e5b8fc6ac158f65598f58dba2c0d52ba3b412f52 Author: Len Brown
> <len.brown@intel.com> Date:   Tue Jul 7 23:22:58 2009 -0400
> 
>     ACPI: check acpi_disabled in acpi_table_parse() and
> acpi_table_parse_entries() 
>     Allow consumers of the
> acpi_table_parse()/acpi_table_parse_entries() API to gracefully
> handle the acpi_disabled=1 case via return value rather than checking
> the global flag themselves. 
>     Signed-off-by: Feng Tang <feng.tang@intel.com>
>     Signed-off-by: Len Brown <len.brown@intel.com>
> ---------------------------------------------------------------------------
Hi Dmitry,

That commit is 
diff --git a/drivers/acpi/tables.c b/drivers/acpi/tables.c
index 646d39c..f336bca 100644
--- a/drivers/acpi/tables.c
+++ b/drivers/acpi/tables.c
@@ -213,6 +213,9 @@ acpi_table_parse_entries(char *id,
        unsigned long table_end;
        acpi_size tbl_size;
 
+       if (acpi_disabled)
+               return -ENODEV;
+
        if (!handler)
                return -EINVAL;
 
@@ -277,6 +280,9 @@ int __init acpi_table_parse(char *id, acpi_table_handler handler)
        struct acpi_table_header *table = NULL;
        acpi_size tbl_size;
 
+       if (acpi_disabled)
+               return -ENODEV;
+
        if (!handler)
                return -EINVAL;

Which only enforces the "acpi_disabled" check and should have no
logical problem.

And I guess your platform is blacklisted and acpi_disabled is set to 1,
while it still need parse ACPI tables to get SMP info. So I would suggest
to add a "acpi=force" for your case.

Thanks,
Feng

