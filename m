From: Tilman Schmidt <t.schmidt@phoenixsoftware.de>
Subject: Re: [Bug #12766] Lots of smp_processor_id() in preemptible messages
Date: Tue, 24 Feb 2009 19:03:06 +0100
Message-ID: <49A4365A.8080704@phoenixsoftware.de>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.-rC.vozoJB@chimera> <49A34777.3050809@goop.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759339AbZBXSG1@vger.kernel.org>
In-Reply-To: <49A34777.3050809@goop.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jeremy Fitzhardinge <jeremy@goop.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>, Marcelo Tosatti <mtosatti@redhat.com>, Stable Kernel <stable@kernel.org>, Thomas Gleixner <tglx@linutronix.de>

Jeremy Fitzhardinge schrieb:
>>
>> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=12766
>> Subject        : Lots of smp_processor_id() in preemptible messages
>> Submitter    : Tilman Schmidt <t.schmidt@phoenixsoftware.de>
>> Date        : 2009-02-23 18:37 (1 days old)
>> References    : http://marc.info/?l=linux-kernel&m=123541536414019&w=4
> 
> Looks like stable needs to pick up 
> d85cf93da66977dbc645352be1b2084a659d8a0b.

I can confirm that commit d85cf93da66977dbc645352be1b2084a659d8a0b applied to 2.6.28.7 fixes this.

Thanks,
Tilman
