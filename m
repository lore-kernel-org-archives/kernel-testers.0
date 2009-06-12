From: Francis Moreau <francis.moro-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13328] b44: eth0: BUG! Timeout waiting for bit 00000002 of 
	register 42c to clear.
Date: Fri, 12 Jun 2009 15:27:51 +0200
Message-ID: <38b2ab8a0906120627l51f8fcbby934e3459ce148d26@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.LpH.8Z7KKB@chimera>
	 <38b2ab8a0906080029n5d0e167oc2fc217f19882816@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=X7FflcRhyugGzIBUbUvW97pHNOXkynf3EtBKzL71Qrc=;
        b=s4Qy+WmiiPPTpLjy9ImyAXT9jUYBKatgCpEWKxSvLghJe2EcdyTbZ/ZgH06VHRmWW7
         ThdlNkFebf4a6pK0vAaACl8csVBuT5ROv6G/9+ZA/MdKYEAvY6S4dFhmzsE8dj5U/y7S
         T2J2mZ+cJQa/tcSkALWmFDoZ1TrRrb9RLUMuo=
In-Reply-To: <38b2ab8a0906080029n5d0e167oc2fc217f19882816-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, netdev <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Jun 8, 2009 at 9:29 AM, Francis Moreau<francis.moro-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> =
wrote:
> Hello
>
> On Sun, Jun 7, 2009 at 11:52 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>
> I just pulled the 2.6.30-rc8 kernel.
>
> I'm giving it a test during this week and let you know if the bug
> comes up again.
>

It's still there on 2.6.30-rc8

--=20
=46rancis
