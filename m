From: Jeremy Fitzhardinge <jeremy@goop.org>
Subject: Re: [Bug #12766] Lots of smp_processor_id() in preemptible messages
Date: Mon, 23 Feb 2009 17:03:51 -0800
Message-ID: <49A34777.3050809@goop.org>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.-rC.vozoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757355AbZBXBEQ@vger.kernel.org>
In-Reply-To: <vP9hdyF4fL.A.-rC.vozoJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>, Marcelo Tosatti <mtosatti@redhat.com>, Tilman Schmidt <t.schmidt@phoenixsoftware.de>, Stable Kernel <stable@kernel.org>, Thomas Gleixner <tglx@linutronix.de>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12766
> Subject		: Lots of smp_processor_id() in preemptible messages
> Submitter	: Tilman Schmidt <t.schmidt@phoenixsoftware.de>
> Date		: 2009-02-23 18:37 (1 days old)
> References	: http://marc.info/?l=linux-kernel&m=123541536414019&w=4
>
>   

Looks like stable needs to pick up  
d85cf93da66977dbc645352be1b2084a659d8a0b.

    J
