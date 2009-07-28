From: saeed bishara <saeed.bishara-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13833] Kernel Oops when trying to suspend with ubifs 
	mounted on block2mtd mtd device
Date: Tue, 28 Jul 2009 14:33:16 +0300
Message-ID: <c70ff3ad0907280433n528a2078tfd0bcf8be5be4b24@mail.gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.gfC.QHObKB@chimera>
	 <20090727091623.GA16229@yamamaya.is-a-geek.org>
	 <200907280043.51688.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=l3lzcF1DtpgkV7P6TPIQmENVmHjgxi1V009r8JbGpLA=;
        b=IAQFT2pSQZARlAHL+pCkDNY2R2SFcSTA4LTJSAN0z2gTJXpMR/FQhMzCbsNe6QdQsO
         sasfAEN5wMIWP2YwgtOg8vHFhc9MeOkiq30qqmaiiCpGwHwcFd63tDPBb28fmMZPguF6
         ITntLBcgqXRC7t/OWnkSpmNMkVOCjJ66hPJ4E=
In-Reply-To: <200907280043.51688.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Tobias Diedrich <ranma-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>, Eric Miao <eric.y.miao-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>

Hi
This patch crashes my system, when issue suspend to ram, the kernel
crashes mtd_cls_suspend when the mtd device is mtdXro, the problem is
the the mtdXro devices are of mtd_class, and the suspend function of
this class assumes that the "dev" is contained in mtd_into structure
(dev_to_mtd(dev)), but, the mtdXro device created using
device_create() so the dev is not contained in valid mtd_info
structure.

saeed


On Tue, Jul 28, 2009 at 1:43 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Monday 27 July 2009, Tobias Diedrich wrote:
>> Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a repor=
t
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.30. =C2=A0Please verify if it still should be listed and =
let me know
>> > (either way).
>>
>>
>> Well, the patch reverting the commit still applies to 2.6.31-rc4, so
>> I assume the issue persists,but I have not tried an unpatched
>> 2.6.31-rc4.
>
> Thanks for the update.
>
> Rafael
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>
