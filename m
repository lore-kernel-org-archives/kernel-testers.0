From: Greg KH <greg@kroah.com>
Subject: Re: [stable] [Bug #12766] Lots of smp_processor_id() in
	preemptible messages
Date: Thu, 12 Mar 2009 22:56:54 -0700
Message-ID: <20090313055654.GC11965@kroah.com>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.-rC.vozoJB@chimera> <49A34777.3050809@goop.org> <49A4365A.8080704@phoenixsoftware.de>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756308AbZCMGEv@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <49A4365A.8080704@phoenixsoftware.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tilman Schmidt <t.schmidt@phoenixsoftware.de>
Cc: Jeremy Fitzhardinge <jeremy@goop.org>, Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>, Marcelo Tosatti <mtosatti@redhat.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@elte.hu>, Kernel Testers List <kernel-testers@vger.kernel.org>, Stable Kernel <stable@kernel.org>

On Tue, Feb 24, 2009 at 07:03:06PM +0100, Tilman Schmidt wrote:
> Jeremy Fitzhardinge schrieb:
> >>
> >> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=12766
> >> Subject        : Lots of smp_processor_id() in preemptible messages
> >> Submitter    : Tilman Schmidt <t.schmidt@phoenixsoftware.de>
> >> Date        : 2009-02-23 18:37 (1 days old)
> >> References    : http://marc.info/?l=linux-kernel&m=123541536414019&w=4
> > 
> > Looks like stable needs to pick up 
> > d85cf93da66977dbc645352be1b2084a659d8a0b.
> 
> I can confirm that commit d85cf93da66977dbc645352be1b2084a659d8a0b applied to 2.6.28.7 fixes this.

Now queued up in 2.6.28-stable
