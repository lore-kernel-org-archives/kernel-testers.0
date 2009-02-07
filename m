From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 6 Feb 2009 17:47:04 -0800
Message-ID: <200902061747.05153.jbarnes@virtuousgeek.org>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902061445.11379.jbarnes@virtuousgeek.org> <Pine.LNX.4.64.0902070040240.15875@blonde.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755130AbZBGBrV@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0902070040240.15875@blonde.anvils>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh@veritas.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Friday, February 6, 2009 4:50 pm Hugh Dickins wrote:
> On Fri, 6 Feb 2009, Jesse Barnes wrote:
> > Yeah that should work.  I always hated this code (well most of X
> > actually); we could probably clean up the logic a little.  If this works
> > I'll send it out to the Xorg list for review.
>
> Yes, thanks for restructuring it, I was rather itching to do so.
>
> With the one small change below which I think you'll approve,
> your patch works for me on the G5 - but I've not tested it on
> other (x86) machines which were already working.

Heh, yeah thanks.  Ok I'll get it into X.

-- 
Jesse Barnes, Intel Open Source Technology Center
