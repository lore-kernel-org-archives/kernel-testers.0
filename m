From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [PATCH] remove rwsem lock from CPUFREQ_GOV_STOP call (second
	call site)
Date: Tue, 9 Jun 2009 11:23:02 -0400
Message-ID: <20090609152302.GA22784@Krystal>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.7vF.2Y7KKB@chimera> <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com> <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com> <1244447366.13471.4.camel@penberg-laptop> <20090608124844.GA17588@Krystal> <20090608143220.GC2516@redhat.com> <20090608152316.GA21033@Krystal> <a8e1da0906081815q68ea7741v3568d6cad5f72bb8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a8e1da0906081815q68ea7741v3568d6cad5f72bb8-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, trenn-l3A5Bk7waGM@public.gmane.org, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

* Dave Young (hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org) wrote:
> On Mon, Jun 8, 2009 at 11:23 PM, Mathieu
> Desnoyers<mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org> wrote:
> > * Dave Jones (davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org) wrote:
> >> On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrote:
> >>
> >> =A0> > > >> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D13475
> >> =A0> > > >> Subject =A0 =A0 =A0 =A0 : suspend/hibernate lockdep wa=
rning
> >> =A0> > > >> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-ke=
rnel&m=3D124393723321241&w=3D4
> >> =A0> > >
> >> =A0> > > I suspect the following commit, after revert this patch I=
 test 5 times
> >> =A0> > > without lockdep warnings.
> >> =A0> > >
> >> =A0> > > commit b14893a62c73af0eca414cfed505b8c09efc613c
> >> =A0> > > Author: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> >> =A0> > > Date: =A0 Sun May 17 10:30:45 2009 -0400
> >> =A0> > >
> >> =A0> > > =A0 =A0 =A0 =A0[CPUFREQ] fix timer teardown in ondemand g=
overnor
> >> =A0> >
> >> =A0> > The patch is probably not at fault here. I suspect it's som=
e latent bug
> >> =A0> > that simply got exposed by the change to cancel_delayed_wor=
k_sync(). In
> >> =A0> > any case, Mathieu, can you take a look at this please?
> >> =A0>
> >> =A0> Yes, it's been looked at and discussed on the cpufreq ML. The=
 short
> >> =A0> answer is that they plan to re-engineer cpufreq and remove th=
e policy
> >> =A0> rwlock taken around almost every operations at the cpufreq le=
vel.
> >> =A0>
> >> =A0> The short-term solution, which is recognised as ugly, would b=
e do to the
> >> =A0> following before doing the cancel_delayed_work_sync() :
> >> =A0>
> >> =A0> unlock policy rwlock write lock
> >> =A0>
> >> =A0> lock policy rwlock write lock
> >> =A0>
> >> =A0> It basically works because this rwlock is unneeded for teardo=
wn, hence
> >> =A0> the future re-work planned.
> >> =A0>
> >> =A0> I'm sorry I cannot prepare a patch current... I've got quite =
a few pages
> >> =A0> of Ph.D. thesis due for the beginning of July.
> >>
> >> I'm kinda scared to touch this code at all for .30 due to the numb=
er of
> >> unexpected gotchas we seem to run into every time we touch somethi=
ng
> >> locking related. =A0So I'm inclined to just live with the lockdep =
warning
> >> for .30, and see how the real fixes look for .31, and push them ba=
ck
> >> as -stable updates if they work out.
> >>
> >>
> >> Venki, what are your thoughts?
> >>
> >
> > Hi Dave,
> >
> > I've looked through the cpufreq code, and the following patch shoul=
d
> > address the call site I've missed in commit
> > 42a06f2166f2f6f7bf04f32b4e823eacdceafdc9. I've followed all
> > __cpufreq_set_policy call sites within cpufreq.c to make sure they =
all
> > hold the rwsem write lock. An extra round of review would be good
> > though.
> >
> > Can someone try the following patch and see if it fixes the regress=
ion ?
>=20
> Bad news, I have tried the patch and It does not fix the regression.
>=20

Can you provide the lockdep error message you get with the patch
applied?

Thanks,

Mathieu


> > My test machine is currently busy running long formal verifications=
, and
> > therefore unavailable for kernel patch testing. It compiles fine on=
 a
> > 2.6.30-rc5 kernel with my (now mainlined) cpufreq patches applied.
> >
> > Mathieu
> >
> >
> > remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
> >
> > commit =A042a06f2166f2f6f7bf04f32b4e823eacdceafdc9
> >
> > Missed a call site for CPUFREQ_GOV_STOP to remove the rwlock taken =
around the
> > teardown. To make a long story short, the rwlock write-lock causes =
a circular
> > dependency with cancel_delayed_work_sync(), because the timer handl=
er takes the
> > read lock.
> >
> > Note that all callers to __cpufreq_set_policy are taking the rwsem.=
 All sysfs
> > callers (writers) hold the write rwsem at the earliest sysfs callin=
g stage.
> >
> > However, the rwlock write-lock is not needed upon governor stop.
> >
> > Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> > CC: rjw-KKrjLPT3xs0@public.gmane.org
> > CC: mingo-X9Un+BFzKDI@public.gmane.org
> > CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> > CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> > CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
> > CC: trenn-l3A5Bk7waGM@public.gmane.org
> > CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
> > CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > ---
> > =A0drivers/cpufreq/cpufreq.c | =A0 11 ++++++++++-
> > =A01 file changed, 10 insertions(+), 1 deletion(-)
> >
> > Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > --- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c =A0 =A0 =A02009-=
06-08 10:20:48.000000000 -0400
> > +++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c =A0 2009-06-08 10:48:=
52.000000000 -0400
> > @@ -1697,8 +1697,17 @@ static int __cpufreq_set_policy(struct c
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0dprintk("governor sw=
itch\n");
> >
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* end old governor =
*/
> > - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (data->governor)
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (data->governor) {
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* =
Need to release the rwsem around governor
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* =
stop due to lock dependency between
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* =
cancel_delayed_work_sync and the read lock
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* =
taken in the delayed work handler.
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 unloc=
k_policy_rwsem_write(data->cpu);
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0__cp=
ufreq_governor(data, CPUFREQ_GOV_STOP);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 lock_=
policy_rwsem_write(data->cpu);
> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> >
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* start new governo=
r */
> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0data->governor =3D p=
olicy->governor;
> >
> >
> > --
> > Mathieu Desnoyers
> > OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F =A0BA06 3F25 A8FE=
 3BAE 9A68
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-ker=
nel" in
> > the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > More majordomo info at =A0http://vger.kernel.org/majordomo-info.htm=
l
> > Please read the FAQ at =A0http://www.tux.org/lkml/
> >
>=20
>=20
>=20
> --=20
> Regards
> dave
>=20

--=20
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE =
9A68
