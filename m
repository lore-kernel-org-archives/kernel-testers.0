From: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Tue, 27 Oct 2009 09:15:16 -0700
Message-ID: <1256660116.21134.9172.camel@rc-desk>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	 <200910152142.02876.elendil@planet.nl>
	 <1255758143.21134.1360.camel@rc-desk>
	 <200910271210.31014.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200910271210.31014.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Abbas, Mohamed" <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>

Hi Frans,

On Tue, 2009-10-27 at 04:10 -0700, Frans Pop wrote:
> Sorry for the delay in replying.
> 
> On Saturday 17 October 2009, reinette chatre wrote:
> > Prompted by this thread we are in process of moving allocation to paged
> > skb. This will definitely reduce the allocation size (from order 2 to
> > order 1) and hopefully help with this problem also. Could you please try
> > with the attached two patches? They are based on 2.6.32-rc4.
> 
> Looks very good! With these patches I no longer get any SKB allocation 
> errors, even during the heaviest freezes while gitk is loading. I do still 
> get (long) music skips during the freezes, but that's not unexpected.
> AFAICT the wireless connection is stable.
> 
> Tested on top of current mainline git: v2.6.32-rc5-81-g964fe08.
> 
> Please add, if you feel it's appropriate, my:
> Reported-and-tested-by: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>

Thank you very much for testing these patches so thoroughly. They are
both on their way upstream already so I am not able to add your
signature at this time. Since these are pretty big changes these patches
will be in 2.6.33.

Reinette

