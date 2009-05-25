From: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA,
	Gigabyte EG45M-DS2H
Date: Mon, 25 May 2009 15:45:22 +0200
Message-ID: <20090525134522.GA7805@arbonne.lan>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <WCcYF-TAbJC.A.51C.SQcGKB@chimera> <200905251448.40907.bzolnier@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905251448.40907.bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> <20090516225153.GA7883-dsTKODJrvkThXIiyNabO3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hello,

this bug is still present, but so far (despite lots of useful help by=20
Bartlomiej) I have been unable to bisect the issue.

We took some of the discussion off-list - here is a summary, with some =
new=20
results at the end:

* I originally bisected the bug and identified this patch as the culpri=
t:
295f00042aaf6b553b5f37348f89bab463d4a469: ide: don't execute the next=20
queued command from the hard-IRQ context (v2)

* The fix for 295f000 (2ea5521: ide: fix suspend regression) did not fi=
x my=20
problem either.

* After some mails, I switched to CONFIG_IDE=3Dn in the config I use fo=
r=20
testing (was CONFIG_IDE=3Dm before), because the problem still occurred=
 in=20
that case. The result of this:
295f000 (ide: don't execute the next queued command from the hard-IRQ
        context (v2)): ***Works*** with CONFIG_IDE=3Dn
2ea5521 (ide: fix suspend regression): Hangs with CONFIG_IDE=3Dn
1406de8 (2.6.30-rc6): Hangs with CONFIG_IDE=3Dn

I also disconnected my second (PATA) disk at that point, since it does =
not=20
influence the bug. So my system is SATA-only, both the (single) hard di=
sk=20
and my DVD writer are SATA.

* I bisected 295f000..2ea5521 and ended up at this as the first bad com=
mit:
9ea09af3bd3090e8349ca2899ca2011bd94cda85: stop_machine: introduce stop_=
machine_create/destroy.
This turns out to be a bug that was fixed by
a0e280e0f33f6c859a235fb69a875ed8f3420388: stop_machine/cpu hotplug: fix=
 disable_nonboot_cpus

* a0e280e worked for me, so (with increasing grumpiness;) I bisected=20
a0e280e..2ea5521. This bisect didn't work, I ended up with a reported "=
bad"=20
commit which was clearly not the problem. The configs and bisect log ar=
e at
<http://atterer.net/s2disk-config/>
The bisect log lines with "OK" mean that I went back and booted the ker=
nel=20
a second time, to make sure I hadn't mixed something up. But the second=
=20
tries all had the same result as the first.

* Bart analysed that part of the history and suggested trying out 73d59=
31,=20
and if that worked, bisecting 73d5931..2ea5521.

Today I re-tried both 73d5931 and 2ea5521, and it turns out that in bot=
h=20
cases, s2disk hangs. :-|

By chance, I noticed that the behaviour during the hang is different fr=
om=20
what I reported before, at least with these two versions. Initially, I=20
said that the system would hang after the "s2disk: Snapshotting system"=
=20
with a blinking cursor.
It turns out that actually it hangs for quite a while (maybe 2 minutes?=
)=20
and only then starts to perform the s2disk!! The last lines written are=
=20
"s2disk: Compression ratio 0.24" or similar, and then a line containing=
=20
just "S=C2=A6". Afterwards, the system does *not* power off as it usual=
ly does,=20
but just seems to hang again. (I think I waited for a few minutes, but=20
nothing happened.)

Since the last, third bisect did not work, I'm at a loss what to try ne=
xt.

Cheers,

  Richard

--=20
  __   _
  |_) /|  Richard Atterer
  | \/=C2=AF|  http://atterer.net
  =C2=AF '` =C2=AF
