From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's testsuite
Date: Sun, 06 Sep 2009 03:56:00 +0900
Message-ID: <87eiql5igv.fsf@devron.myhome.or.jp>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19099.52899.620345.326521@pilspetsen.it.uu.se>
	<19100.31254.666066.755541@pilspetsen.it.uu.se>
	<200909012042.59856.rjw@sisk.pl>
	<alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
	<19105.5352.28380.230615@pilspetsen.it.uu.se>
	<alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040804450.23850@eeepc.linux-foundation.org>
	<alpine.LFD.2.00.0909040910140.4537@eeepc.linux-foundation.org>
	<87pra55nsr.fsf@devron.myhome.or.jp>
	<alpine.LFD.2.00.0909051059360.6727@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909051059360.6727-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
	(Linus Torvalds's message of "Sat, 5 Sep 2009 11:06:25 -0700 (PDT)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> writes:

> On Sun, 6 Sep 2009, OGAWA Hirofumi wrote:
>> 
>> This is not meaning to object to your patch though, I think we would be
>> good to fix pty_space(), not leaving as wrong. With fix it, I guess we
>> don't get strange behavior in the near of buffer limit.
>
> I'd actually rather not make that function any more complicated.
>
> Just make the rules be very simple:
>
>  - the pty layer has ~64kB buffering, and if you just blindly do a 
>    ->write() op, you can see how many characters you were able to write.
>
>  - before doing a ->write() op, you can ask how many characters you are 
>    guaranteed to be able to write by doing a "->write_room()" call.
>
> ..and then the bug literally was just that "pty_write()" was confused, and 
> thought that it should do that "write_room()" thing, which it really 
> shouldn't ever have done.
>
> So I really think that the true fix is to just remove the code from 
> pty_write(), and not do anything more complicated. I'll also commit the 
> change to write '\r\n' as one single string, because quite frankly, it's 
> just stupid to do it as two characters, but at that point it's just a 
> cleanup.

But, current write_room() returns almost all wrong value. For example,
if we have the 4kb preallocated buffer in some state and used it,
->memory_used will be 4kb even if we are using only a byte actually.

I thought it's strange/wrong, even if we removed the pty_space() in
pty_write().

>> Also, it seems the non-n_tty path doesn't use tty_write_room() check,
>> and instead it just try to write and check written bytes which returned
>> by tty->ops->write().
>
> .. and I think that's fine. I think write_room() should be used sparingly, 
> and only by code that cares about being able to fit at least 'n' 
> characters in the tty buffers. In fact, I think even n_tty would likely in 
> general be better off without it (and just check the return value), but 
> because of the stateful character translation (that doesn't actually keep 
> any state around, it just wants to expand things as it goes along), and 
> because of historical reasons, we'll just keep it using write_room.

As a bit long term solution, I agree. Current code seems to have fragile
buffer handling about echoes, \n etc. And yes, perhaps, to avoid
write_room() is clean way.

But, I felt 64kb (pty_write) vs 8kb (pty_write_room) sounds strange
currently.

Thanks.
-- 
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
