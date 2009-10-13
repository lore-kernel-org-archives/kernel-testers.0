From: "=?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?=" 
	<fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 12 Oct 2009 23:54:19 -0300 (BRST)
Message-ID: <alpine.LNX.2.01.0910122343340.19647@dyndns.pervalidus.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1177665380-1255402465=:19647"
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753836AbZJMCzH-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :in-reply-to:message-id:references:user-agent:x-archive:mime-version
         :content-type;
        bh=a+XwsdWYPTThBJFMfmoU3jhO27RdnLMch1nSqUR6kFE=;
        b=LgS7jfUyxJg+DoCYG+Y991LQD2KA+fbMgTipI20ksdOI1AY9OLbpPDWr3Uh20U6Hjx
         7AVgukvv66QTWQZnwsW7+das3OOhA9f7sLglZNUeTtFnQ1o2I9lm3IpfLJSOhKWkmIpS
         LWaxhsPuVd3/DLkeZEsxGI9kKDs5PTLI5mdsA=
In-Reply-To: <alpine.LFD.2.01.0910121703390.3438-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: linux-kernel-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1177665380-1255402465=:19647
Content-Type: TEXT/PLAIN; charset="iso-8859-15"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On Mon, 12 Oct 2009, Linus Torvalds wrote:

> On Mon, 12 Oct 2009, Nix wrote:
>> On 12 Oct 2009, Justin P. Mattock uttered the following:
>>
>>> Not sure where this stands. Right now all three machines I have seem  t=
o be having no issues with the kayboard
>>> (xserver 1.6.*) I can go and build the latest xserver(1.7) to see if I =
 hit something.
>> [...]
>>>> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=3D14388
>>>> Subject        : keyboard under X with 2.6.31
>>>> Submitter    : Fr=E9d=E9ric L. W. Meunier <fredlwm-Re5JQEeQqe8AvxtiuMw=
x3w@public.gmane.org>
>>>> Date        : 2009-10-07 20:19 (5 days old)
>>>> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds=
/linux-2.6.git;a=3Dcommit;h=3De043e42bdb66885b3ac10d27a01ccb9972e2b0a3
>>>> References    : http://marc.info/?l=3Dlinux-kernel&m=3D125494753228217=
&w=3D4
>>
>> I have been seeing problems precisely like those described (sometimes
>> the keyboard dies, sometimes it gets 'stuck' with a key held down, until
>> I switch TTYs, which generally means killing X as I'm not aware of an
>> easy way to switch VTs using only the mouse), since I moved to 2.6.31
>
> The particular commit that was bisected to should really not matter for X,
> except perhaps from a timing standpoint.
>
> The problem it fixed was in pty's, and X doesn't use them much if at all
> (various X _programs_ may, of course, but the symptoms don't sound like
> it's just a particular X app that has issues, but more of a generic X
> keyboard handling thing)
>
> But for non-pty's, there should be no semantic changes from that commit
> outside of some general tty timing differences by doing that
> tty_flush_to_ldisc() at new points.
>
> I could fairly easily imagine that some timing difference does expose
> another longer-standing problem in either the kernel or X itself. So the
> bisection isn't necessarily wrong, it's just not likely telling us what
> the real problem is.
>
> Of course, maybe there is some race condition in the tty_buffer.c code. We
> _used_ to not call flush_to_ldisc() except through the workqueue code, so
> races would not be seen in normal circumstances. Now that flush_to_ldisc()
> could easily get called both synchronously from tty_read()/tty_poll(),
> while also being hit from the workqueues.
>
> Alan, Ogawa-san, do either of you see some problem in tty_buffer.c,
> perhaps?

Just a note. With me, all the keyboard problems happened while I=20
was under X, but doing something in a terminal running screen.=20
Reverting the commit stopped the problem.
--8323328-1177665380-1255402465=:19647--
