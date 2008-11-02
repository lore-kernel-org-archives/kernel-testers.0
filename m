From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11940] Unable to handle kernel paging request at iov_iter_copy_from_user_atomic
Date: Sun, 2 Nov 2008 22:13:38 +0100
Message-ID: <200811022213.38796.rjw@sisk.pl>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.yGE.qjeDJB@chimera> <20081102.130409.86443785.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081102.130409.86443785.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org

On Sunday, 2 of November 2008, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Sun,  2 Nov 2008 17:07:10 +0100 (CET)
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11940
> > Subject		: Unable to handle kernel paging request at iov_iter_copy_from_user_atomic
> > Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-11-01 14:23 (2 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122554945922521&w=4
> > Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=122556602913200&w=4
> 
> Patch is now in Linus's tree:
> 
> commit 145e1c0023585e0e8f6df22316308ec61c5066b2
> Author: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> Date:   Sat Nov 1 21:41:40 2008 -0700
> 
>     sparc64: Fix __copy_{to,from}_user_inatomic defines.
>     
>     Alexander Beregalov reports oops in __bzero() called from
>     copy_from_user_fixup() called from iov_iter_copy_from_user_atomic(),
>     when running dbench on tmpfs on sparc64: its __copy_from_user_inatomic
>     and __copy_to_user_inatomic should be avoiding, not calling, the fixups.
>     
>     Signed-off-by: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
>     Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Thanks, closed.

Rafael
