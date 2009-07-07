From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13660] Crashes during boot on 2.6.30 / 2.6.31-rc, random 
	programs
Date: Tue, 7 Jul 2009 22:05:52 +0800
Message-ID: <2375c9f90907070705p1ae6ebe4x61bda34dd072c1c@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.5zE.DjASKB@chimera>
	 <a5d9929e0907011336g31599a29hca3c204f1b53b775@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=l9wHeQfGok1wA9B2aiQ+PQRA6UIyd/nG0VxiMcvBLVo=;
        b=UI3Pq1EnIhM2q7bvA5HiMKtmmvw0d2Mwrbt0f4JWg4uMvoIhWTa2G4Gi7LbPWAM2QR
         Kx8w5yC78wtetEBYGljqg1roCfxadkRjtE6Xm5uKRXQBw2qf1e3SIZlkYRFEHUxaTb0y
         2tnm+KzX3JAvOxlihdsQu6WSshbSXVj8qnJng=
In-Reply-To: <a5d9929e0907011336g31599a29hca3c204f1b53b775-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Joao Correia <joaomiguelcorreia-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, Jul 2, 2009 at 4:36 AM, Joao Correia<joaomiguelcorreia-Re5JQEeQqe8@public.gmane.org=
m> wrote:
> No formal patch has been sent yet, that i am aware of. I have made
> some changes following suggestion by Americo Wang advise, to the
> following:
>
> (patch by Ingo)
>
> diff --git a/kernel/lockdep_internals.h b/kernel/lockdep_internals.h
> index 699a2ac..031f4c6 100644
> --- a/kernel/lockdep_internals.h
> +++ b/kernel/lockdep_internals.h
> @@ -65,7 +65,7 @@ enum {
> =C2=A0* Stack-trace: tightly packed array of stack backtrace
> =C2=A0* addresses. Protected by the hash_lock.
> =C2=A0*/
> -#define MAX_STACK_TRACE_ENTRIES =C2=A0 =C2=A0 =C2=A0 =C2=A0262144UL
> +#define MAX_STACK_TRACE_ENTRIES =C2=A0 =C2=A0 =C2=A0 =C2=A01048576UL
>
> =C2=A0extern struct list_head all_lock_classes;
> =C2=A0extern struct lock_chain lock_chains[];
>
> and afterwards, a new bug popped up, solved by changing
>
> include/linux/sched.h
>
> # define MAX_LOCK_DEPTH 48UL
>
> to
>
> # define MAX_LOCK_DEPTH 96UL
>
>
> I have now found a third limit bug, related to MAX_LOCKDEP_CHAINS,
> which was hidden so far, which im trying to raise and replicate. This
> is being discussed in detail in another message exchange on the lkml,
> between me and Americo.

How about changing MAX_LOCKDEP_CHAINS_BITS to 16?

kernel/lockdep_internals.h:59:#define MAX_LOCKDEP_CHAINS_BITS	15

And can you make a complete patch and send it to lkml with Peter and me
Cc'ed?

Thank you!
