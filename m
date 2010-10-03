From: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #17361] Watchdog detected hard LOCKUP in jbd2_journal_get_write_access
Date: Sun, 3 Oct 2010 13:21:03 +0200
Message-ID: <AANLkTimPjz85+N8aiVV3yxz808LMG1-aZKAaO8CwUK=m@mail.gmail.com>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
	<sQALkqF1FWE.A.IiE.Qp6nMB@chimera>
	<20101002165215.GK21129@thunk.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=JenYelabIcQ3pLL+rX/5FxS6Y8tGQLlRAO7R5SZQxEk=;
        b=g1lM8kCY71lO61Rm919hfCbzw3PDyzs4gSqf5eG+JriHxWvsvQdBW/LJh2VN+d4pxT
         lRuUukkHgh3aPdIp0pRZlk2f6PLL72u30OZ+h3PtqbM8q3IYvT+23QduwMgbY1amZCpd
         bI25sK1FIjNThDTva1ihbLWCyW8QCEd5phJUM=
In-Reply-To: <20101002165215.GK21129-AKGzg7BKzIDYtjvyW6yDsg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej
Cc: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mathieu Desnoyers <compudj-vdFpqfd5riKZ9vWoFJJngh2eb7JE58TQ@public.gmane.org>

On 2 October 2010 18:52, Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org> wrote:
> On Sun, Sep 26, 2010 at 10:04:13PM +0200, Rafael J. Wysocki wrote:
>>
>> Bug-Entry =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D17361
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Watchdog =
detected hard LOCKUP in jbd2_journal_get_write_access
>> Submitter =C2=A0 =C2=A0 : Christian Casteyde <casteyde.christian@fre=
e.fr>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-08-29 19:59 (29 days o=
ld)
>
> See my latest comment here:
>
> =C2=A0 =C2=A0https://bugzilla.kernel.org/show_bug.cgi?id=3D17361#c14
>
> This subject line is highly misleading, since after -rc4, the stack
> traces are in places all over the kernel, in other places other than
> ext4/jbd2. =C2=A0So I fear no one is looking at this bug report given=
 the
> highly misleading subject line.
>
> It looks like you have spinlock debugging, and yet there wan't any
> spinlocks listed on the initial ext4 might_sleep() warning. =C2=A0So
> something looks highly confused.
>
> The fact that you closed other bugs as duplicates of this one that
> relate to kmemcheck makes me wonder if this is really a kmemcheck bug=
=2E
> (If so, the subject line here is doubly, doubly misleading.)
>
> Do you see any symptoms if you turn off kmemcheck? =C2=A0Are you sure=
 this
> isn't just only a kmemcheck bug?

I just had a quick glance at the report, and here's my gut feeling: I
see perf symbols in the stack trace. I don't think kmemcheck and perf
play nicely together (for example if perf uses NMIs to write data to
its buffers, it could get a page fault inside the NMI handler, which
is not so nice, I think).

Isn't this exactly what Frederic Weisbecker tried to detect and warn
about in a patch that I saw recently?

Please do as Ted suggested and try to turn kmemcheck off.


Vegard
