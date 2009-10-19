From: Karol Lewandowski <karol.k.lewandowski@gmail.com>
Subject: Re: [Bug #14141] order 2 page allocation failures (generic)
Date: Mon, 19 Oct 2009 16:01:45 +0200
Message-ID: <20091019140145.GA4222@bizet.domek.prywatny>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910190133.33183.elendil@planet.nl> <1255912562.6824.9.camel@penberg-laptop> <200910190444.55867.elendil@planet.nl> <alpine.DEB.2.00.0910191146110.1306@sebohet.brgvxre.pu> <1255946051.5941.2.camel@penberg-laptop>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=sFgpy5guZXUPmw3Y95grySPx7xwyKvj8hIezwCsARfQ=;
        b=NQSOBYMDsrEWHwQGqJYpGu0U7go3CO5QJflWBJ0GNFVdsArOXbEVIAzSIMBUm2s+KB
         9x9vRKgJm6RYsbMFzgmO8kIA6nIfYs+ZcROBIASnIlfCfLQni/XCJU30rUhnYrxQO3J6
         ilDso3tq1D0neHYWPZaXJN3yTguegqybznn+8=
Content-Disposition: inline
In-Reply-To: <1255946051.5941.2.camel@penberg-laptop>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg@cs.helsinki.fi>
Cc: Tobi Oetiker <tobi@oetiker.ch>, Frans Pop <elendil@planet.nl>, Mel Gorman <mel@csn.ul.ie>, David Rientjes <rientjes@google.com>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Reinette Chatre <reinette.chatre@intel.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Karol Lewandowski <karol.k.lewandowski@gmail.com>, Mohamed Abbas <mohamed.abbas@intel.com>, "John W. Linville" <linville@tuxdriver.com>, linux-mm@kvack.org, jens.axboe@oracle.com

On Mon, Oct 19, 2009 at 12:54:11PM +0300, Pekka Enberg wrote:
> On Mon, 2009-10-19 at 11:49 +0200, Tobi Oetiker wrote:
> > I have updated a fileserver to 2.6.31 today and I see page
> > allocation failures from several parts of the system ... mostly nfs though ... (it is a nfs server).
> > So I guess the problem must be quite generic:
> 
> Yup, it almost certainly is. Does this patch help?
> 
> http://lkml.org/lkml/2009/10/16/89

This patch seems to help in some cases.  Before applying this patch I
was able to trigger alloc failures on different machine by booting
kernel with "mem=256MB" and doing:

  $ gitk on-full-tree &
  # rmmod e100
  ... wait for few MBs in swap
  # modprobe e100; ifup --force ethX

So here this patch helped -- with it, I was unable to trigger page
allocation failures (testing was short, tough).  However, as I said
here[1], I applied both of Mel's patches (including this one) and that
didn't help my orginal issue (failures after suspend).

[1] http://lkml.org/lkml/2009/10/17/109

Thanks.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
