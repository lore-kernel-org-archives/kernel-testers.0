From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 8 Aug 2008 14:14:00 +0400
Message-ID: <a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
References: <a4423d670807070859y74f529b5i60f04e0a37a01cd3@mail.gmail.com>
	 <20080807.230139.220174417.davem@davemloft.net>
	 <a4423d670808080231nc4d5e25q6636fe8ff090b84@mail.gmail.com>
	 <20080808.024024.205614839.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=df9tzFi1m2C91hrTyFukIypMLRxoxji1r/VlbK4Wp04=;
        b=pa5ToFWVbQi3p9un92ydwpf3pSnaS5LraisNanAxDUGjlCIsDKG4Q6gPXEXXgsONFB
         00YPBDffXtP97yN+POMWTsgAk1hcq/eymqkanQrW2B/fwLIvnOE3uJIix+s4pdkGkJzD
         GnbjLfcbZOqJ75gsc9dE8wDrrCZSXBkHLHkfw=
In-Reply-To: <20080808.024024.205614839.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: mikpe-1zs4UD6AkMk@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Fri, 8 Aug 2008 13:31:40 +0400
>
>> 2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
>> > From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Date: Mon, 7 Jul 2008 19:59:04 +0400
>> >
>> >> I have turned off LOCKDEP and it boots properly.
>> >> 2.6.26-rc9-00005-g1b40a89
>> >>
>> >> Mikael's config also does not contain LOCKDEP.
>> >
>> > I have finally reproduced the problem locally and figured out the
>> > bug.
>> >
>> > Please try this patch:
>> >
>> Thanks David,  but 2.6.27-rc2-00166-gaeee90d hangs in the same way.
>
> That patch was for you to add on top of whatever tree you
> have handy.  Did you apply the patch?
>
> That patch will fix all trees.
>
Yes, I applied it manually on top of 2.6.27-rc2-0166

$git diff
diff --git a/arch/sparc64/kernel/stacktrace.c b/arch/sparc64/kernel/stacktrace.c
index b3e3737..c22a131 100644
--- a/arch/sparc64/kernel/stacktrace.c
+++ b/arch/sparc64/kernel/stacktrace.c
@@ -26,13 +26,15 @@ void save_stack_trace(struct stack_trace *trace)

                /* Bogus frame pointer? */
                if (fp < (thread_base + sizeof(struct thread_info)) ||
-                   fp >= (thread_base + THREAD_SIZE))
+                   fp > (thread_base + THREAD_SIZE - sizeof(struct
sparc_stackf)))
                        break;

                sf = (struct sparc_stackf *) fp;
                regs = (struct pt_regs *) (sf + 1);

-               if ((regs->magic & ~0x1ff) == PT_REGS_MAGIC) {
+               if (((unsigned long)regs <=
+                       (thread_base + THREAD_SIZE - sizeof(*regs))) &&
+                       (regs->magic & ~0x1ff) == PT_REGS_MAGIC) {
                        if (!(regs->tstate & TSTATE_PRIV))
                                break;
                        pc = regs->tpc;
