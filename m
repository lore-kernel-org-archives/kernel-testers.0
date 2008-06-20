From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Sat, 21 Jun 2008 01:19:29 +0400
Message-ID: <a4423d670806201419i2f0c0982j69eb423f9ecd239d@mail.gmail.com>
References: <a4423d670806190707k7ae6da8cud80a826a1603d941@mail.gmail.com>
	 <a4423d670806190902l48c542e0i6a7380a2d3e7f520@mail.gmail.com>
	 <20080619.190048.193701955.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Q61vScFbWviJKtTpPHVL0TYQDT3C0FUBrIUbPX0b334=;
        b=w113l1jIgaT6pOwwEw7yL9y2kI9TWRgf6bdSaKCbANM7RuP+zednneUh0mwI4tkjYD
         AmIqNmdZEPZj9rOoHqxXVUEwUokxJauP/5vJ0yuY3mX2+5eZdw9EKeMMmhFqr4CO5tdY
         rfN37MEMgmwZ0IbL9IneEmP8cWhkrHd03FFgQ=
In-Reply-To: <20080619.190048.193701955.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2008/6/20 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> When you revert that changeset, there is a loop in the backtrace of
> all kernel threads, and therefore lockdep turns itself off when all of
> the stack backtrace slots get consumed by that loop in the backtraces.
>
> After the revert you should see a set of kernel messages like:
>
> BUG: MAX_STACK_TRACE_ENTRIES too low!
> turning off the locking correctness validator.
>
> and that would confirm my theory.

No, I do not have such messages.
Does it mean that we need different explanation?
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
