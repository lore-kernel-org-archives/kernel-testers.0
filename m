From: Alexey Starikovskiy <aystarik@gmail.com>
Subject: Re: 2.6.27-rc6-git6: Reported regressions from 2.6.26
Date: Mon, 22 Sep 2008 01:57:35 +0400
Message-ID: <48D6C34F.8070700@gmail.com>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=0kcKoWL24JXYBaHBHpwxYAc1XN+m3gPnN/mnWU8ZHMA=;
        b=k7dDv/J1OBrC4wCmCFry59ZuUmRx1yPnDKVhGvLWaOmw6YGuIG3dbaH331Hb3S2ZV5
         /4+DvIhCBbh/ZGNLFa0f9XbcFK4KaXGy6wF4iAO2N9SfNaabv3ucva3C/r51duLeKUXV
         CMvQFzgofTisJWLSTJbEiEo+6lRfdDysHNtLI=
In-Reply-To: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>, Linux PM List <linux-pm@lists.linux-foundation.org>, Linux SCSI List <linux-scsi@vger.kernel.org>

Hi Rafael,
Correct patch is the one attached to bugzilla entry,
not the one you mention.

Regards,
Alex.

Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11549
> Subject		: 2.6.27-rc5 acpi: EC Storm error message on bootup
> Submitter	: <jmerkey@wolfmountaingroup.com>
> Date		: 2008-09-02 21:27 (20 days old)
> References	: http://marc.info/?l=linux-kernel&m=122039255517586&w=4
> Handled-By	: Alexey Starikovskiy <astarikovskiy@suse.de>
> Patch		: http://marc.info/?l=linux-kernel&m=122098180019264&w=4
>   
