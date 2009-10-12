From: David Miller <davem@davemloft.net>
Subject: Re: [Bug #14294] kernel BUG at drivers/ide/ide-disk.c:187
Date: Mon, 12 Oct 2009 03:51:26 -0700 (PDT)
Message-ID: <20091012.035126.264745627.davem@davemloft.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.xEC.dzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756135AbZJLKve@vger.kernel.org>
In-Reply-To: <L6tb-VyKHZK.A.xEC.dzl0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw@sisk.pl
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, bzolnier@gmail.com, manty@manty.net

From: "Rafael J. Wysocki" <rjw@sisk.pl>
Date: Mon, 12 Oct 2009 01:01:09 +0200 (CEST)

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14294
> Subject		: kernel BUG at drivers/ide/ide-disk.c:187
> Submitter	: Santiago Garcia Mantinan <manty@manty.net>
> Date		: 2009-09-30 11:05 (12 days old)
> References	: http://marc.info/?l=linux-kernel&m=125430926311466&w=4
> Handled-By	: David Miller <davem@davemloft.net>

I gave the user a debugging patch, but they reported that they
can no longer trigger the issue with 2.6.31.1

See:

	http://marc.info/?l=linux-ide&m=125469615425454&w=4

Maybe that's enough to close this, I dunno.
