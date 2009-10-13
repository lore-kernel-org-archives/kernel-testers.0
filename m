From: David Miller <davem@davemloft.net>
Subject: Re: [Bug #14378] Problems with net/core/skbuff.c
Date: Tue, 13 Oct 2009 03:25:38 -0700 (PDT)
Message-ID: <20091013.032538.71622552.davem@davemloft.net>
References: <20091012.034224.64980795.davem@davemloft.net>
	<4AD44435.3050703@navynet.it>
	<4AD45447.7030705@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <4AD45447.7030705@gmail.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: eric.dumazet@gmail.com
Cc: ctrixk@navynet.it, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, netdev@vger.kernel.org

From: Eric Dumazet <eric.dumazet@gmail.com>
Date: Tue, 13 Oct 2009 12:19:51 +0200

> Quick fix would be to use dev_kfree_skb_any() instead,
> because netpoll can definitly calls start_xmit()
> with irq disabled.

Indeed, because of netpoll(), that is something drivers
must be able to cope with.

> Could you please following patch ?

Indeed, let us know how Eric's patch works.

Thanks Eric!
