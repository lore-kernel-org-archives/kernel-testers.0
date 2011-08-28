From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 3.1-rc3-git6: Reported regressions from 3.0
Date: Sun, 28 Aug 2011 12:49:26 -0700
Message-ID: <CA+55aFxuTmfE3iFL7ko=9ZWDuxenssw69hyEG3bgQxy_QDqgZA__38225.403489969$1314561028$gmane$org@mail.gmail.com>
References: <lx6sezwGldO.A.IhF.UBpWOB@chimera> <20110828193519.GA14132@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110828193519.GA14132-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian

On Sun, Aug 28, 2011 at 12:35 PM, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> On Sun, Aug 28, 2011 at 08:22:05PM +0200, Rafael J. Wysocki wrote:
>
> =A0> Bug-Entry =A0 =A0: http://bugzilla.kernel.org/show_bug.cgi?id=3D=
41742
> =A0> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0: duplicate filename =A0for i=
ntel_backlight with the i915 driver
> =A0> Submitter =A0 =A0: Fran=E7ois Valenduc <francois.valenduc@tvcabl=
enet.be>
> =A0> Date =A0 =A0 =A0 =A0 : 2011-08-25 18:51 (4 days old)
> =A0> First-Bad-Commit: http://git.kernel.org/linus/aaa6fd2a004147bf32=
fce05720938236de3361d9
>
> this should be fixed by b727d20269e8ef1de002bfea8099f5e9db9e9f23

Actually, by a2cc797d2d1a ("i915: do not setup intel_backlight ").

That b727d20269e is just my merge commit that brings in the fix (and
the bogus initialization of 'locked') into mainline.

                   Linus
