From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Sat, 30 Apr 2011 12:51:43 -0700
Message-ID: <BANLkTinZRdGROHZqjLFtr=buEUNwyYhVpQ@mail.gmail.com>
References: <Xp4OiTz83N.A.O0D.JVGvNB@chimera> <G9uL1cldhmL.A.sNF.dWGvNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <G9uL1cldhmL.A.sNF.dWGvNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

I think we had all assumed that this was the MD problem that should
have been fixed in rc4 (the symptoms matched), but I don't think we
got any confirmation from Bart on that.

Bart? Does the problem still persist in current -git?

                 Linus

On Sat, Apr 30, 2011 at 12:42 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.38. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
32982
> Subject =A0 =A0 =A0 =A0 : Kernel locks up a few minutes after boot
> Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-04-10 19:55 (21 days old)
>
>
>
