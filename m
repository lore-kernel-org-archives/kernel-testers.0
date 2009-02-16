From: Jarek Poplawski <jarkao2@gmail.com>
Subject: Re: 2.6.29-rc5: Reported regressions from 2.6.28
Date: Mon, 16 Feb 2009 07:29:10 +0000
Message-ID: <20090216072910.GA4763@ff.dom.local>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Mime-Version: 1.0
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=KGnn7KXnfGXQ85D54fFiAG9FxpOnnvo+/m1kTQL7BqE=;
        b=PDxbiP8Ao7R6TlB5ZmLzhojI5CE+c8+ktUfwqGyKMGewsiybo3wQJbZBVLJR+yWRfV
         eGNCl6c/JWKtqow+N5EWXmWx4aJQvzrpQnJAnPUalMB01vu01OtmvK4FRc+aTjMMZXlP
         MMm4O7V7zIehy2RRi6IX0B6HXqo3xmd9liWng=
Content-Disposition: inline
In-Reply-To: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, Linux ACPI <linux-acpi@vger.kernel.org>, Linux PM List <linux-pm@lists.linux-foundation.org>, Linux SCSI List <linux-scsi@vger.kernel.org>

On 14-02-2009 21:35, Rafael J. Wysocki wrote:
> This message contains a list of some regressions from 2.6.28, for which there
> are no fixes in the mainline I know of.  If any of them have been fixed already,
> please let me know.
...
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12615
> Subject		: boot hangs while bringing up gianfar ethernet
> Submitter	: Ira Snyder <iws@ovro.caltech.edu>
> Date		: 2009-01-29 19:41 (17 days old)
> References	: http://marc.info/?l=linux-kernel&m=123325817201665&w=4

Fixed by:
commit	8707bdd48ab705a459ac1b12014075a139d1d4f9
gianfar: Fix boot hangs while bringing up gianfar ethernet
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=8707bdd48ab705a459ac1b12014075a139d1d4f9

Cheers,
Jarek P.
