From: Wu Fengguang <fengguang.wu@gmail.com>
Subject: Re: OOM killer in 2.6.31-rc2
Date: Wed, 8 Jul 2009 13:15:15 +0800
Message-ID: <20090708051515.GA17156@localhost>
References: <200907061056.00229.gene.heskett@verizon.net> <200907071057.31152.gene.heskett@verizon.net> <20090708021708.GA10481@localhost> <200907072342.07822.gene.heskett@verizon.net>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=dHUGrK2osJBhMwGMQVF2rcFMGwuh2F7R+FeMWT1OMu0=;
        b=HkuNgkY+FsytM/+UaIOCdmujT9vHwY3YAgT3A5aVXyoMiISG4DSJMtZzKuzwnB1WDW
         nKP/LLxS4y8sorhAPRWjqB9ZvIgGb6KSfK2cGIazWtJ7EqyB8NvOi5F4TN6RrImx7I6/
         toTgpN0nNAzStT1j97+9VLLnVm9/RFqpzAphQ=
Content-Disposition: inline
In-Reply-To: <200907072342.07822.gene.heskett@verizon.net>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Gene Heskett <gene.heskett@verizon.net>
Cc: Linux Kernel list <linux-kernel@vger.kernel.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>, Minchan Kim <minchan.kim@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Howells <dhowells@redhat.com>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>

On Tue, Jul 07, 2009 at 11:42:07PM -0400, Gene Heskett wrote:
> On Tuesday 07 July 2009, Wu Fengguang wrote:
> >On Tue, Jul 07, 2009 at 10:57:30PM +0800, Gene Heskett wrote:
> >> On Tuesday 07 July 2009, Wu Fengguang wrote:
> >> >On Mon, Jul 06, 2009 at 10:56:00AM -0400, Gene Heskett wrote:
> >> >> Greetings all;
> [...]
> >> >
> >> >Normal zone is absent in the above lines.
> >>
> >> Is this a .config issue?
> >
> >At least CONFIG_HIGHMEM64G is not necessary, could try disabling it.
> 
> I have in a rebuild of this 2.6.30.1 kernel, but ISTR I enabled that because 
> it was only using 3G of the 4G of ram in this box, an AMD-64 Phenom, 4 cores, 
> 4G ram.  But I haven't rebooted to it yet.  Next good excuse.  See below... :)

I guess you can only use 3G ram because there is a big memory hole.
Your HighMem zone spanned 951810 pages, 813013 of which is present.
So it's not quite accurate for the OOM message "951810 pages HighMem"
to report the spanned pages.

Your Normal zone has 221994 present pages, while the OOM message shows
"slab:206505", which indicates that the OOM is caused by too much
slab pages(they cannot be allocated from HighMem zone).

I guess your near 800MB slab cache is somehow under scanned.

Thanks,
Fengguang

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
