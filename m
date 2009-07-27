From: Wu Fengguang <fengguang.wu@intel.com>
Subject: Re: [Bug #13665] commit 69c854817566 causes OOMs
Date: Mon, 27 Jul 2009 08:48:51 +0800
Message-ID: <20090727004851.GA10495@localhost>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.44E.QIObKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755195AbZG0Asz@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3zAHs5O6maO.A.44E.QIObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Howells <dhowells@redhat.com>, MinChan Kim <minchan.kim@gmail.com>, "kosaki.motohiro@jp.fujitsu.com" <kosaki.motohiro@jp.fujitsu.com>, Rik van Riel <riel@redhat.com>

On Mon, Jul 27, 2009 at 04:28:20AM +0800, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13665
> Subject		: commit 69c854817566 causes OOMs
> Submitter	: David Howells <dhowells@redhat.com>
> Date		: 2009-06-27 08:12 (30 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=69c854817566db82c362797b4a6521d0b00fe1d8
> References	: http://lkml.org/lkml/2009/6/27/28

Both patches from KOSAKI and Rik can fix the OOM in my tests:

http://lkml.org/lkml/2009/7/7/104
http://patchwork.kernel.org/patch/34740/

The latter one has been included in -mm

> Handled-By	: Wu Fengguang <fengguang.wu@intel.com>
> Patch		: http://patchwork.kernel.org/patch/32740/

This patch is also in -mm.

Thanks,
Fengguang
