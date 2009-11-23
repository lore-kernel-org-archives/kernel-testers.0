From: Karol Lewandowski <karol.k.lewandowski@gmail.com>
Subject: Re: [Bug #14265] ifconfig: page allocation failure. order:5,
	mode:0x8020 w/ e100
Date: Mon, 23 Nov 2009 12:57:16 +0100
Message-ID: <20091123115716.GB5256@bizet.domek.prywatny>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera> <mYW9sxtWd2G.A.3sF.jDACLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757368AbZKWL5c@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=+KVoV3GTIB2GuiF8MICuMNRkdm1aF+nfbgW5tGi44d8=;
        b=fpkEaRjbOG3KCSzpWHG+ZLx/fzgEdPpdsuu9iwy6XNYjX0BggmUOf9pDasNETGAR8D
         ziBRmbNhhWdw8UMCrHjjib9CoAXWhoH2cj9SIGTCrPgC/rN8VIo8Wq1xrf30dWOXGZLf
         FTk+sx3ivr55ucKUu8Et0hMrdJX2s3XnGK1kk=
Content-Disposition: inline
In-Reply-To: <mYW9sxtWd2G.A.3sF.jDACLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Mel Gorman <mel@csn.ul.ie>, Roger Oksanen <roger.oksanen@cs.helsinki.fi>

On Sat, Nov 21, 2009 at 04:02:11PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14265
> Subject		: ifconfig: page allocation failure. order:5, mode:0x8020 w/ e100
> Submitter	: Karol Lewandowski <karol.k.lewandowski@gmail.com>
> Date		: 2009-09-15 12:05 (68 days old)
> References	: http://marc.info/?l=linux-kernel&m=125301636509517&w=4

Status of this bug in mainline didn't change. However, there are
patches to fix this issue:

  1. http://marc.info/?l=e1000-devel&m=125659409119946&w=2

Works -- interface is brought up properly.  However, kernel warns
about two allocation failures (and succeeds in thrid attempt).

Patches to make warnings appear every 10th failure have been
presented.  What this basically means for me is that failure message
would pop up every 5th suspend-resume cycle.

(Patch has a typo that needs fixing: s/struct cbs/struct cb/)


  2. http://marc.info/?l=e1000-devel&m=125637894721936&w=2

Works without any warnings.  Sadly, patch is far more intrusive.

Thanks.
