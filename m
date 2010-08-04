From: Tejun Heo <htejun@gmail.com>
Subject: [PATCH RESEND block#for-2.6.36] block_dev: always serialize exclusive
 open attempts
Date: Wed, 04 Aug 2010 17:59:39 +0200
Message-ID: <4C598E6B.7050405@gmail.com>
References: <2dWFdr9kTFM.A.P0D.spXVMB@chimera> <AANLkTimcH7+Bq1UEbaSU7SQpzArPgmSLegiqE13V8=CF@mail.gmail.com> <4C56F30D.3020304@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=hoJGsS1vP4ZhnUB7+2JY2+f2F31yZ2ogDS6OTAPCgjw=;
        b=I8bwCDq8n5ilpPT6w/9OrA4ILI+EtD2zKcoo0iucQMnC1lkNSw9L9qhz7dqB8AHOrB
         xyjLPDhi4KEna7k3wytP6S4X+1ygMr/5PN/8m/OWnZv9Zi6f/qlZr63Zyq46P5rssXjk
         6xQdfpUO62kwcyUKGNtWVTtNJWDNlL7oDqkeI=
In-Reply-To: <4C56F30D.3020304@kernel.org>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jens Axboe <jaxboe@fusionio.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>, Linux PM List <linux-pm@lists.linux-foundation.org>, Linux SCSI List <linux-scsi@vger.kernel.org>, Linux Wireless List <linux-wireless@vger.kernel.org>, DRI <dri-devel@lists.freedesktop.org>, Linus Torvalds <torvalds@linux-foundation.org>, stable@kernel.org, Maciej Rutecki <maciej.rutecki@gmail.com>

bd_prepare_to_claim() incorrectly allowed multiple attempts for
exclusive open to progress in parallel if the attempting holders are
identical.  This triggered BUG_ON() as reported in the following bug.

  https://bugzilla.kernel.org/show_bug.cgi?id=16393

__bd_abort_claiming() is used to finish claiming blocks and doesn't
work if multiple openers are inside a claiming block.  Allowing
multiple parallel open attempts to continue doesn't gain anything as
those are serialized down in the call chain anyway.  Fix it by always
allowing only single open attempt in a claiming block.

This problem can easily be reproduced by adding a delay after
bd_prepare_to_claim() and attempting to mount two partitions of a
disk.

stable: only applicable to v2.6.35

Signed-off-by: Tejun Heo <tj@kernel.org>
Reported-by: Markus Trippelsdorf <markus@trippelsdorf.de>
Cc: stable@kernel.org
---
Oops, had the wrong reported-by credit.  Updated.

Thanks.

 fs/block_dev.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/block_dev.c b/fs/block_dev.c
index 99d6af8..b3171fb 100644
--- a/fs/block_dev.c
+++ b/fs/block_dev.c
@@ -681,8 +681,8 @@ retry:
 	if (!bd_may_claim(bdev, whole, holder))
 		return -EBUSY;

-	/* if someone else is claiming, wait for it to finish */
-	if (whole->bd_claiming && whole->bd_claiming != holder) {
+	/* if claiming is already in progress, wait for it to finish */
+	if (whole->bd_claiming) {
 		wait_queue_head_t *wq = bit_waitqueue(&whole->bd_claiming, 0);
 		DEFINE_WAIT(wait);

