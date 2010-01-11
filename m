From: "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14874] Ath5k regression with commit 8bf3d79bc401ca417ccf9fc076d3295d1a71dbf5
Date: Mon, 11 Jan 2010 12:05:27 -0800
Message-ID: <43e72e891001111205x32fd367dlbb1f7c8a777d2f73@mail.gmail.com>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.1h.vNlSLB@chimera> 
	<43e72e891001110705w43524cc6pac1ff6c971926eaf@mail.gmail.com> 
	<201001112101.36950.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=jaT9ICsjVULIWU4BTzYTvT64AjkBNMqjmR0C3ZFHs6o=;
        b=DKZ3O6fdBbr98N/dI63r0ocdPS4/3wEcaj6Z0V3MzuDyIZPkILsUmLLctFhXP6NBqY
         p2DP6m3L9C6NCFQG2OQUzTrL/zrfzXL5M+dDvAiGXen+7dgNnbZfgjrq79knc968wop1
         SsZP8iwfXKzjFUHQusAE5dEe+Fm82XdQqnsXA=
In-Reply-To: <201001112101.36950.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Joshua Covington <joshuacov-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

On Mon, Jan 11, 2010 at 12:01 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> On Monday 11 January 2010, Luis R. Rodriguez wrote:
>> On Sun, Jan 10, 2010 at 2:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
>> > This message has been generated automatically as a part of a repor=
t
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.32. =C2=A0Please verify if it still should be listed and =
let me know
>> > (either way).
>>
>> This should be closed now.
>
> The patch linked below is not present in the Linus' tree at the momen=
t AFAICS.
> Has it been fixed in a different way?

That patch is just a debug patch Michael worked on to actually get
some message from ath5k as to what is happening instead of it dying
without notice. A patch that actually fixes the issue would still be
needed, and that remains to be determined.

  Luis
