From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Tue, 02 Feb 2010 17:43:38 -0800
Message-ID: <4B68D4CA.2010803@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Zdz8cVA0xDDab2Rd7iwWz+gSkAN8Ai7ACwLEg0gUURw=;
        b=TNggeW1cYg2fRH1ieuUQG4UjX04yRzbE0sZddk7+rwSuZe9sja3kkScLYQ5J/WDOiJ
         /cckzcgawNOWaYwuV4xAcAO2D0LyxRGs72unMm209zVLgONXGs7bhtR0scG+5RV+vI+H
         SOKx7Dd0/krMczEaRleavV2/lHarh/hGh/p1k=
In-Reply-To: <4B67CCEC.2030103@s5r6.in-berlin.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: Dan Carpenter <error27@gmail.com>, linux1394-devel@lists.sourceforge.net, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jan Beulich <jbeulich@novell.com>

o.k. finally finished with the bisect:

reverting this gets things going on 2.6.33-rc5

789d03f584484af85dbdc64935270c8e45f36ef7 is the first bad commit
commit 789d03f584484af85dbdc64935270c8e45f36ef7
Author: Jan Beulich <JBeulich@novell.com>
Date:   Tue Jun 30 11:52:23 2009 +0100

     x86: Fix fixmap ordering

     The merge of the 32- and 64-bit fixmap headers made a latent
     bug on x86-64 a real one: with the right config settings
     it is possible for FIX_OHCI1394_BASE to overlap the FIX_BTMAP_*
     range.

     Signed-off-by: Jan Beulich <jbeulich@novell.com>
     Cc: <stable@kernel.org> # for 2.6.30.x
     LKML-Reference: <4A4A0A8702000078000082E8@vpn.id2.novell.com>
     Signed-off-by: Ingo Molnar <mingo@elte.hu>

The only thing I can think of at this point
is maybe the CFLAGS I used to build this system.
(as for the x86_32 working and x86_64 failing not sure);

I'm curious to see if anybody else is hitting this?

Justin P. Mattock
