From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14951] lockdep possible recursive lock in slab 
	parent->list->rlock
Date: Sun, 3 Jan 2010 13:36:20 +0200
Message-ID: <84144f021001030336y30444880vb6b9c251eb8a049a@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	 <NJVdobuNFNK.A.pdF.3mhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=HyDxAZOtRCctAZb8iAMzXGBr0tg0gnfb1/6zGcZrH7Q=;
        b=TB9D8hK7fpTnlK20RY+owyJx8zJHXpvRug1Oc4r6C6ahs+4znFe6eKJhwdsfUJOhU3
         drUrkxhk7zVOrB9MwWnblnG0cy1889WI/bWhcAMqcp21grR3VkwvrvDkJxhhg/4ecHbL
         6xRh1ko8AYeHHt9bk7tKc1vx1qrafEMIFcSqY=
In-Reply-To: <NJVdobuNFNK.A.pdF.3mhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>

Hi Rafael,

On Tue, Dec 29, 2009 at 5:10 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14951
> Subject =A0 =A0 =A0 =A0 : lockdep possible recursive lock in slab par=
ent->list->rlock
> Submitter =A0 =A0 =A0 : Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-27 12:06 (3 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126191=
560531463&w=3D4
> Handled-By =A0 =A0 =A0: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> Patch =A0 =A0 =A0 =A0 =A0 : http://patchwork.kernel.org/patch/69829/

This bug is fixed by the following commit in Linus' tree:

http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3D=
commitdiff;h=3D00afa758067ac1c947149ef766adcdfe30c44d7d
