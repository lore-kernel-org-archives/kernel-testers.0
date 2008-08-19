From: "Langsdorf, Mark" <mark.langsdorf@amd.com>
Subject: RE: [Regression] 2.6.27-rc2-git4: suspend and power off fails on Asus M3A32-MVP
Date: Tue, 19 Aug 2008 12:02:35 -0500
Message-ID: <6453C3CB8E2B3646B0D020C112613273C5AC8B@sausexmb4.amd.com>
References: <200808092321.16711.rjw@sisk.pl> <6453C3CB8E2B3646B0D020C112613273C5AC60@sausexmb4.amd.com> <200808191903.30437.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756855AbYHSRC6@vger.kernel.org>
Content-Class: urn:content-classes:message
In-Reply-To: <200808191903.30437.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Andrew Morton <akpm@linux-foundation.org>, Dave Jones <davej@redhat.com>, Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org, Randy Dunlap <randy.dunlap@oracle.com>, "Arnold, Frank" <Frank.Arnold@amd.com>

> > > It is sufficient to revert commit 
> > > 34ae7f35a21694aa5cb8829dc5142c39d73d6ba0 to
> > > make things work again.
> > 
> > Thanks for the clear report.  I'll look into it and try to fix it.
> 
> Any news?

Revert the patch for now.  I'm still looking into getting 
a reliable reproduction and I do not have a fix at this time.

-Mark Langsdorf
Operating System Research Center
AMD
