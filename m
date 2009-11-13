From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [PATCH 3/5] page allocator: Wait on both sync and async 
	congestion after direct reclaim
Date: Fri, 13 Nov 2009 15:41:46 +0200
Message-ID: <84144f020911130541p42c0b3d5lc307f97f22e2d356@mail.gmail.com>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie>
	 <1258054235-3208-4-git-send-email-mel@csn.ul.ie>
	 <20091113142526.33B3.A69D9226@jp.fujitsu.com>
	 <20091113115558.GY8742@kernel.dk> <20091113122821.GC29804@csn.ul.ie>
	 <20091113133211.GA8742@kernel.dk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type;
        bh=QusiFpzk/Nmq7uVOHWF3TSzPQnvaL0vh9BICjHD2n94=;
        b=IPTIiGvF/0Masn9NMdBHQlwUGcW6TIfTeNFXCWothxGJVmPaDg4qH/8DxtMCNwfUTm
         3IaaLO/wK5yC9Dsj9XLbTNhSmJscmzgCrlAyUtwE3mkkMTFdVv1GXEDR4qPfIKfZRcwF
         NHe5nZTjh8MwDL+8HL04VQ2sHENao7fAg/xYA=
In-Reply-To: <20091113133211.GA8742-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Hi Jens,

On Fri, Nov 13, 2009 at 3:32 PM, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org> wrote:
>> Suggest an alternative that brings congestion_wait() more in line with
>> 2.6.30 behaviour then.
>
> I don't have a good explanation as to why the delays have changed,
> unfortunately. Are we sure that they have between .30 and .31? The
> dm-crypt case is overly complex and lots of changes could have broken
> that house of cards.

Hand-waving or not, we have end user reports stating that reverting
commit 8aa7e847d834ed937a9ad37a0f2ad5b8584c1ab0 ("Fix
congestion_wait() sync/async vs read/write confusion") fixes their
(rather serious) OOM regression. The commit in question _does_
introduce a functional change and if this was your average regression,
people would be kicking and screaming to get it reverted.

So is there a reason we shouldn't send a partial revert of the commit
(switching to BLK_RW_SYNC) to Linus until the "real" issue gets
resolved? Yes, I realize it's ugly voodoo magic but dammit, it used to
work!

                        Pekka
