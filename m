From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #17361] Random kmemcheck errors and kernel freeze on 2.6.36-rc*
Date: Sun, 17 Oct 2010 00:13:36 +0200
Message-ID: <201010170013.36208.rjw@sisk.pl>
References: <v0Rsc8XZnFC.A.-xF.oqfsMB@chimera> <201010102140.26584.rjw@sisk.pl> <201010112330.35921.casteyde.christian@free.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201010112330.35921.casteyde.christian-GANU6spQydw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
Cc: LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday, October 11, 2010, Christian Casteyde wrote:
> Hello

Hi,

> Well, I would like to find the real commit, but I don't know how to d=
o that.
> I'm not so used to using other branches than Linus' one.
>=20
> From the commit hash, how do I find:
> - the git tree I should use to bisect more?
> - the initial good and bad marks?
> And can I bisect only that branch on top of my current kernel source =
directory?

Yes, you can.  In this particular case the merge says that the series s=
tarted
with commit "x86: Fix keeping track of AMD C1E" and ended with
"x86, xsave: Cleanup return codes in check_for_xstate()".

Now, you can do

$ git log --oneline v2.6.35.. | grep "x86: Fix keeping track of AMD C1E=
"

and you get this information:

e8c534e x86: Fix keeping track of AMD C1E

Similarly, this command

$ git log --oneline v2.6.35.. | grep "x86, xsave: Cleanup return codes =
in check_for_xstate()"

returns

d6d4d42 x86, xsave: Cleanup return codes in check_for_xstate()

so you probably need to bisect between commits d6d4d42 (presumably good=
)
and e8c534e (presumably bad).

However, it still is better to do "checkout d6d4d42" and see if that ke=
rnel is
good (and analogously for d6d4d42) to start with.

Thanks,
Rafael


> Le dimanche 10 octobre 2010 21:40:26, vous avez =C3=A9crit :
> > On Sunday, October 10, 2010, Christian Casteyde wrote:
> > > Still present with 2.6.37-rc7
> > > I think I managed to bisect it however:
> > >=20
> > > 0f477dd0851bdcee82923da66a7fc4a44cb1bc3d is the first bad commit
> >=20
> > This is a merge, so it most likely is not the real first bad commit=
=2E
> >=20
> > Could you check the commits on the branch merged by it?
> >=20
> > Rafael
>=20
>=20
