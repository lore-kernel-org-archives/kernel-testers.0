From: Daisuke Nishimura <d-nishimura@mtf.biglobe.ne.jp>
Subject: Re: [Experimental][PATCH] putback_lru_page rework
Date: Wed, 18 Jun 2008 23:50:25 +0900
Message-ID: <20080618235025.6ced35f8.d-nishimura@mtf.biglobe.ne.jp>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	<20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
	<20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp>
	<20080618184000.a855dfe0.kamezawa.hiroyu@jp.fujitsu.com>
Reply-To: nishimura@mxp.nes.nec.co.jp
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753923AbYFROvT@vger.kernel.org>
In-Reply-To: <20080618184000.a855dfe0.kamezawa.hiroyu@jp.fujitsu.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu@jp.fujitsu.com>
Cc: Daisuke Nishimura <nishimura@mxp.nes.nec.co.jp>, Andrew Morton <akpm@linux-foundation.org>, Rik van Riel <riel@redhat.com>, Lee Schermerhorn <lee.schermerhorn@hp.com>, Kosaki Motohiro <kosaki.motohiro@jp.fujitsu.com>, Nick Piggin <npiggin@suse.de>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

Hi, Kamezawa-san.

Sorry for my late reply, and thank you for your patch.

> This patch tries to make putback_lru_pages() to be lock_page() free.
> (Of course, some callers must take the lock.)
> 
I like this idea.

I'll test it tomorrow.


Thanks,
Daisuke Nishimura.
