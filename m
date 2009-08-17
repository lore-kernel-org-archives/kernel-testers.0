From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Tue, 18 Aug 2009 00:02:34 +0300
Message-ID: <11fae7c70908171402y18699abbs7a293fe9ff562388@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl>
	 <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com>
	 <200908132034.34951.rjw@sisk.pl>
	 <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com>
	 <20090816205706.GB3463@elte.hu>
	 <11fae7c70908161412v61fd233au5166e18f4c4d0931@mail.gmail.com>
	 <20090816213407.GA30245@elte.hu>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=PlAMXyGIMpqMlimWg2ZdqU8N456Hrij+UhgeCUwshbg=;
        b=aFjOl9XsD5dkStl8x6dwfJczEt0rJqbpGLB6v5bQqJXmbmIfreUw03dCoG0RObJgyS
         o78QAjwooH3Zxoxh9wE7QFsTyYghsWcGoplLrreryVTGU+2oy0BzFFDCMn7XPAaxxTsg
         EycPYOxS8gWBUl7cZQIeAOSuMzOiUc2YkYWy8=
In-Reply-To: <20090816213407.GA30245-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/8/17 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
>
> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>
>> 2009/8/16 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
>> >
>> > * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>> >
>> >> On Thu, Aug 13, 2009 at 9:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> w=
rote:
>> >> > On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
>> >> >> On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org=
> wrote:
>> >> >> > On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
>> >> >> >> 2009/8/13 Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
>> >> >> >> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo@elte.=
hu> wrote:
>> >> >> >> >> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>> >> >> >> >>> Yes, this bug is still valid.
>> >> >> >> >>>
>> >> >> >> >>> Ubuntu kernel team member Leann Ogasawara and I are slo=
wly
>> >> >> >> >>> bisecting our way through the changes that took place s=
ince 2.6.30
>> >> >> >> >>> to find the commit that introduced this regression. Ple=
ase stay
>> >> >> >> >>> tuned.
>> >> >> >> >>
>> >> >> >> >> hm, the only outright Geode related commit was:
>> >> >> >> >>
>> >> >> >> >> =C2=A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to =
prevent resume failure
>> >> >> >> >>
>> >> >> >> >> the jpg at:
>> >> >> >> >>
>> >> >> >> >> =C2=A0http://launchpadlibrarian.net/28892781/00002.jpg
>> >> >> >> >>
>> >> >> >> >> is very out of focus - but what i could decypher suggest=
s a
>> >> >> >> >> pagefault crash in the VFS code, in generic_delete_inode=
().
>> >> >> >>
>> >> >> >> This one might be a bit better:
>> >> >> >>
>> >> >> >> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
>> >> >
>> >> > Hmm. =C2=A0This looks like a sysfs oops to my untrained eye.
>> >>
>> >> The bisect I did with Leann Ogasawara has narrowed the kernel pan=
ic
>> >> down to the following:
>> >>
>> >> commit f19d4a8fa6f9b6ccf54df0971c97ffcaa390b7b0
>> >> Author: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
>> >> Date: Mon Jun 8 19:50:45 2009 -0400
>> >>
>> >> =C2=A0 =C2=A0 add caching of ACLs in struct inode
>> >>
>> >> =C2=A0 =C2=A0 No helpers, no conversions yet.
>> >>
>> >> =C2=A0 =C2=A0 Signed-off-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
>> >
>> > Weird. If the functions do what their name suggests, i.e. if
>> > inode_init_always() is an always called constructor and if
>> > destroy_inode() is an unconditional destructor then this patch
>> > should have no functional effect on the VFS side.
>> >
>> > It increases the size of struct inode, so if you have some old
>> > module (built to an older version of fs.h) still around it might
>> > corrupt your inode data structure.
>> >
>> > Or the size change might trigger some dormant bug. It might move a
>> > critical inode right into the path of a pre-existing (but not
>> > visibly crash-triggering) data corruption.
>> >
>> > The possibilities on the 'weird bug' front are endless - the
>> > crash/oops itself should be turned into text, posted here and
>> > analyzed.
>>
>> If you mean something else than the large-size snapshot of the
>> whole panic output that was linked earlier in this thread, I'd
>> appreciate instructions on how to turn that crash into text.
>
> it's still a JPG - posting the transcribed oops in email text would
> certainly help more folks looking over it.
>
> (painful i know ...)

I welcome suggestions for proper OCR software that can extract the
text displayed therein. Manually transcribing it is too error-prone to
even try.

Martin-=C3=89ric
