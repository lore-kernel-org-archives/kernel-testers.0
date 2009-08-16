From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Sun, 16 Aug 2009 22:17:04 +0300
Message-ID: <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl>
	 <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com>
	 <200908132034.34951.rjw@sisk.pl>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=KsCmLYsBs/cvCYjpLa7jWmO/+hx3eD5u75PkK0GTipQ=;
        b=pvqDL7GH9LsK9SV9fWmM3HVwisLluvCjHHiKabf46EP8H3zvF+kjVcTBk8sqG52VuV
         +uVBFVtnckBSYCqx0zmN5Go/PYk3NCy9PYfm3PoP4ngWFxdtDUtoGiKui/Ho7DSMLPag
         +LCiHkCWE+dkbIDs8E0QbkeOSd6T2vixwrKsU=
In-Reply-To: <200908132034.34951.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Aug 13, 2009 at 9:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
>> On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
>> > On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
>> >> 2009/8/13 Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
>> >> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> wr=
ote:
>> >> >> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>> >> >>> Yes, this bug is still valid.
>> >> >>>
>> >> >>> Ubuntu kernel team member Leann Ogasawara and I are slowly
>> >> >>> bisecting our way through the changes that took place since 2=
=2E6.30
>> >> >>> to find the commit that introduced this regression. Please st=
ay
>> >> >>> tuned.
>> >> >>
>> >> >> hm, the only outright Geode related commit was:
>> >> >>
>> >> >> =C2=A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to preven=
t resume failure
>> >> >>
>> >> >> the jpg at:
>> >> >>
>> >> >> =C2=A0http://launchpadlibrarian.net/28892781/00002.jpg
>> >> >>
>> >> >> is very out of focus - but what i could decypher suggests a
>> >> >> pagefault crash in the VFS code, in generic_delete_inode().
>> >>
>> >> This one might be a bit better:
>> >>
>> >> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
>
> Hmm. =C2=A0This looks like a sysfs oops to my untrained eye.

The bisect I did with Leann Ogasawara has narrowed the kernel panic
down to the following:

commit f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0
Author: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Date: Mon Jun 8 19:50:45 2009 -0400

    add caching of ACLs in struct inode

    No helpers, no conversions yet.

    Signed-off-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>

Best Regards,
Martin-=C3=89ric
