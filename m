From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #12666] Build failure with latest -git: btrfs on ppc64
Date: Sun, 8 Feb 2009 23:08:13 +0100
Message-ID: <200902082308.14366.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.x-D.N20jJB@chimera> <20090208215321.GE11398@bombadil.infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754296AbZBHWIj@vger.kernel.org>
In-Reply-To: <20090208215321.GE11398@bombadil.infradead.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kyle McMartin <kyle@infradead.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Chuck Ebbert <cebbert@redhat.com>

On Sunday 08 February 2009, Kyle McMartin wrote:
> On Sun, Feb 08, 2009 at 08:21:49PM +0100, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12666
> > Subject		: Build failure with latest -git: btrfs on ppc64
> > Submitter	: Chuck Ebbert <cebbert@redhat.com>
> > Date		: 2009-02-07 20:50 (2 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123404002114219&w=4
> > 
> 
> Just fyi, patch here:
> Subject: x86: spinlocks: define dummy __raw_spin_is_contended                   
> Date: Sun, 8 Feb 2009 13:03:41 -0500                                            
> Message-ID: <20090208180341.GC11398@bombadil.infradead.org>    

Thanks, updated the bug entry with this patch.

Rafael
