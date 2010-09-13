From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16961] kernel BUG at arch/x86/kvm/../../../virt/kvm/kvm_main.c:1978
Date: Mon, 13 Sep 2010 19:59:26 +0200
Message-ID: <201009131959.26660.rjw@sisk.pl>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera> <0c5PAlgnPrH.A.WOC.hsRjMB@chimera> <20100913134847.GA5263@swordfish.minsk.epam.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100913134847.GA5263-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Monday, September 13, 2010, Sergey Senozhatsky wrote:
> On (09/12/10 20:14), Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16961
> > Subject		: kernel BUG at arch/x86/kvm/../../../virt/kvm/kvm_main.c:1978
> > Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-08-19 9:54 (25 days old)
> > Message-ID	: <<20100819095429.GA5201-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>>
> > References	: http://marc.info/?l=linux-kernel&m=128221169606214&w=2
> > Handled-By	: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > 
> > 
> 
> Hello,
> Fixed by
> commit da908f2fb4e783c2a4de751fb90f11a0dd041161
> Author: Zachary Amsden <zamsden-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

Thanks, closing.

Rafael
