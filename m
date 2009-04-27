From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Mon, 27 Apr 2009 13:36:46 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0904271327140.11650@chino.kir.corp.google.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>  <egHshlwQQFE.A.KjC.JpE9JB@chimera> <alpine.DEB.2.00.0904261314430.18988@chino.kir.corp.google.com> <84144f020904270152o6567e84cj914934120315bf90@mail.gmail.com> <alpine.DEB.1.10.0904271000200.16119@qirst.com>
 <Pine.LNX.4.64.0904271849590.2455@galaxy.riz.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1240864613; bh=aDotB7gr/uIy7Obmpy5ZsJlZtec=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=VT7nuKTJFMyGqMtB47Zze9d6W1OaHc1
	p/8whAHaFmzAxBKSUO0kGs0zAG/+rsXhJRmqt/N7u9LwbNv310Zvv1Q==
In-Reply-To: <Pine.LNX.4.64.0904271849590.2455-Bi0AbNG1eu+dHxVRc3HrWQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bart <mmx-G/jkD+u3s4s@public.gmane.org>
Cc: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Mon, 27 Apr 2009, Bart wrote:

> After turning the suggested debuging options I've got tons of these when
> trying to stress the tape device like before:
> 
> Apr 27 16:57:30 fs kernel: [   96.446708] slab error in verify_redzone_free():
> cache `size-128': memory outside object was overwritten
> Apr 27 16:57:30 fs kernel: [   96.446713] Pid: 0, comm: swapper Not tainted
> 2.6.29.1-64 #2
> Apr 27 16:57:30 fs kernel: [   96.446715] Call Trace:
> Apr 27 16:57:30 fs kernel: [   96.446717]  <IRQ>  [<ffffffff8029adc5>]
> __slab_error+0x1f/0x25
> Apr 27 16:57:30 fs kernel: [   96.446728]  [<ffffffff8029b24b>]
> cache_free_debugcheck+0x108/0x1d6
> Apr 27 16:57:30 fs kernel: [   96.446731]  [<ffffffff8029b473>]
> kfree+0x81/0xc2
> Apr 27 16:57:30 fs kernel: [   96.446735]  [<ffffffff802bd311>]
> bio_free_map_data+0xc/0x1e

This appears to be kfree(bmd->iovecs) in bio_free_map_data().  It looks 
like the memcpy size in bio_set_map_data() overrides the kmalloc size; in 
other words, for a redzone error, bio->bi_vcnt > nr_pages in 
bio_copy_user_iov().
