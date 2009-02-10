From: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12666] Build failure with latest -git: btrfs on ppc64
Date: Tue, 10 Feb 2009 15:00:07 -0500
Message-ID: <20090210150007.38bae23d@dhcp-100-2-144.bos.redhat.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	<sWhNs83kKPE.A.x-D.N20jJB@chimera>
	<20090208215321.GE11398@bombadil.infradead.org>
	<200902082308.14366.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902082308.14366.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kyle McMartin <kyle-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 8 Feb 2009 23:08:13 +0100
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Sunday 08 February 2009, Kyle McMartin wrote:
> > On Sun, Feb 08, 2009 at 08:21:49PM +0100, Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12666
> > > Subject		: Build failure with latest -git: btrfs on ppc64
> > > Submitter	: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2009-02-07 20:50 (2 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=123404002114219&w=4
> > > 
> > 
> > Just fyi, patch here:
> > Subject: x86: spinlocks: define dummy __raw_spin_is_contended                   
> > Date: Sun, 8 Feb 2009 13:03:41 -0500                                            
> > Message-ID: <20090208180341.GC11398-PfSpb0PWhxZc2C7mugBRk2EX/6BAtgUQ@public.gmane.org>    
> 

Patch was merged, commit a5ef7ca0e2636bad0ccd07b996d775348ae2b65e
