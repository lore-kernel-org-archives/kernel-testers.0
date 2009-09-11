From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk@iki.fi>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Fri, 11 Sep 2009 15:31:56 +0300
Message-ID: <11fae7c70909110531w6eecc0c9w7df8f24929384226@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <200908131654.45227.rjw@sisk.pl>
	 <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com>
	 <200908132034.34951.rjw@sisk.pl>
	 <11fae7c70908161217p33830075p783880315a31b2e5@mail.gmail.com>
	 <20090816205706.GB3463@elte.hu>
	 <11fae7c70908161412v61fd233au5166e18f4c4d0931@mail.gmail.com>
	 <20090816213407.GA30245@elte.hu>
	 <11fae7c70908171402y18699abbs7a293fe9ff562388@mail.gmail.com>
	 <20090818045048.GC11624@1wt.eu>
Reply-To: q-funk@iki.fi
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753276AbZIKMiH@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=V3JdpLlVXHV0Pd4c3k90+5nM70mkYdkZZAqsHaDvDT0=;
        b=buKpynAHTJxvveKjfhipLTfN+HBUjdY3Aw5ineix+r5ONl8fIL0MwRB+r6Gb1/R3Aa
         +2lulpZMSnLikdFpK+3swHXOhSo7SyS+Pkx49+GTWfeS7zwH7wpHcD17Zq19oIVzOmmC
         kCN72WKa1z50CbgtVy2K/mDIXDQjVnP9GbQzw=
In-Reply-To: <20090818045048.GC11624@1wt.eu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Willy Tarreau <w@1wt.eu>
Cc: Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Alexander Viro <viro@ftp.linux.org.uk>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

2009/8/18 Willy Tarreau <w@1wt.eu>:
> On Tue, Aug 18, 2009 at 12:02:34AM +0300, Martin-=C3=89ric Racine wro=
te:
> (...)
>> > it's still a JPG - posting the transcribed oops in email text woul=
d
>> > certainly help more folks looking over it.
>> >
>> > (painful i know ...)
>>
>> I welcome suggestions for proper OCR software that can extract the
>> text displayed therein. Manually transcribing it is too error-prone =
to
>> even try.
>
> Well, there are less risks of errors retyping by hand than passing vi=
a
> an OCR. At least *you* know that everything you see are hex numbers, =
the
> OCR does not. Eventhough it's quite annoying to do that by hand, it
> generally takes less than 5 minutes to retype an oops, which is not t=
hat
> much. Of course, the serial cable to another machine to get a panic d=
ump
> is the easiest solution ;-)

That would be assuming that a serial console is available.  This is
not the case here. No legacy port whatsoever.

Martin-=C3=89ric
