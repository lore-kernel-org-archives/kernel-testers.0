From: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] remove rwsem lock from CPUFREQ_GOV_STOP call (second call 
	site)
Date: Tue, 9 Jun 2009 09:15:31 +0800
Message-ID: <a8e1da0906081815q68ea7741v3568d6cad5f72bb8@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.7vF.2Y7KKB@chimera>
	 <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com>
	 <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com>
	 <1244447366.13471.4.camel@penberg-laptop>
	 <20090608124844.GA17588@Krystal> <20090608143220.GC2516@redhat.com>
	 <20090608152316.GA21033@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Rd/nClE/O+l6eSggLUZB2RLfvudcKFENgGAD9IQ01mI=;
        b=LGiTdIFNpC98F3d3cIv3ojWglmnQyqUpvJQFFyXvjsLX4LHspHgtzSX1xEYCG5uMPr
         Fnqd9ZHM4iRfyuedRfasHX/8/5YRZhOIKoH2JFjqDFO/IXmE/8oPT423cor278chzpPd
         uK+AbbcDFdWv0iZu3BCEoDjwVyAKosB/2yCl8=
In-Reply-To: <20090608152316.GA21033@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, trenn-l3A5Bk7waGM@public.gmane.org, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Mon, Jun 8, 2009 at 11:23 PM, Mathieu
Desnoyers<mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org> wrote:
> * Dave Jones (davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org) wrote:
>> On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrote:
>>
>> =C2=A0> > > >> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kern=
el.org/show_bug.cgi?id=3D13475
>> =C2=A0> > > >> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : suspend/hiberna=
te lockdep warning
>> =C2=A0> > > >> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3D=
linux-kernel&m=3D124393723321241&w=3D4
>> =C2=A0> > >
>> =C2=A0> > > I suspect the following commit, after revert this patch =
I test 5 times
>> =C2=A0> > > without lockdep warnings.
>> =C2=A0> > >
>> =C2=A0> > > commit b14893a62c73af0eca414cfed505b8c09efc613c
>> =C2=A0> > > Author: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
>> =C2=A0> > > Date: =C2=A0 Sun May 17 10:30:45 2009 -0400
>> =C2=A0> > >
>> =C2=A0> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0[CPUFREQ] fix timer teardown =
in ondemand governor
>> =C2=A0> >
>> =C2=A0> > The patch is probably not at fault here. I suspect it's so=
me latent bug
>> =C2=A0> > that simply got exposed by the change to cancel_delayed_wo=
rk_sync(). In
>> =C2=A0> > any case, Mathieu, can you take a look at this please?
>> =C2=A0>
>> =C2=A0> Yes, it's been looked at and discussed on the cpufreq ML. Th=
e short
>> =C2=A0> answer is that they plan to re-engineer cpufreq and remove t=
he policy
>> =C2=A0> rwlock taken around almost every operations at the cpufreq l=
evel.
>> =C2=A0>
>> =C2=A0> The short-term solution, which is recognised as ugly, would =
be do to the
>> =C2=A0> following before doing the cancel_delayed_work_sync() :
>> =C2=A0>
>> =C2=A0> unlock policy rwlock write lock
>> =C2=A0>
>> =C2=A0> lock policy rwlock write lock
>> =C2=A0>
>> =C2=A0> It basically works because this rwlock is unneeded for teard=
own, hence
>> =C2=A0> the future re-work planned.
>> =C2=A0>
>> =C2=A0> I'm sorry I cannot prepare a patch current... I've got quite=
 a few pages
>> =C2=A0> of Ph.D. thesis due for the beginning of July.
>>
>> I'm kinda scared to touch this code at all for .30 due to the number=
 of
>> unexpected gotchas we seem to run into every time we touch something
>> locking related. =C2=A0So I'm inclined to just live with the lockdep=
 warning
>> for .30, and see how the real fixes look for .31, and push them back
>> as -stable updates if they work out.
>>
>>
>> Venki, what are your thoughts?
>>
>
> Hi Dave,
>
> I've looked through the cpufreq code, and the following patch should
> address the call site I've missed in commit
> 42a06f2166f2f6f7bf04f32b4e823eacdceafdc9. I've followed all
> __cpufreq_set_policy call sites within cpufreq.c to make sure they al=
l
> hold the rwsem write lock. An extra round of review would be good
> though.
>
> Can someone try the following patch and see if it fixes the regressio=
n ?

Bad news, I have tried the patch and It does not fix the regression.

> My test machine is currently busy running long formal verifications, =
and
> therefore unavailable for kernel patch testing. It compiles fine on a
> 2.6.30-rc5 kernel with my (now mainlined) cpufreq patches applied.
>
> Mathieu
>
>
> remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
>
> commit =C2=A042a06f2166f2f6f7bf04f32b4e823eacdceafdc9
>
> Missed a call site for CPUFREQ_GOV_STOP to remove the rwlock taken ar=
ound the
> teardown. To make a long story short, the rwlock write-lock causes a =
circular
> dependency with cancel_delayed_work_sync(), because the timer handler=
 takes the
> read lock.
>
> Note that all callers to __cpufreq_set_policy are taking the rwsem. A=
ll sysfs
> callers (writers) hold the write rwsem at the earliest sysfs calling =
stage.
>
> However, the rwlock write-lock is not needed upon governor stop.
>
> Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> CC: rjw-KKrjLPT3xs0@public.gmane.org
> CC: mingo-X9Un+BFzKDI@public.gmane.org
> CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
> CC: trenn-l3A5Bk7waGM@public.gmane.org
> CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
> CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> ---
> =C2=A0drivers/cpufreq/cpufreq.c | =C2=A0 11 ++++++++++-
> =C2=A01 file changed, 10 insertions(+), 1 deletion(-)
>
> Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c =C2=A0 =C2=A0 =C2=A0=
2009-06-08 10:20:48.000000000 -0400
> +++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c =C2=A0 2009-06-08 10:48=
:52.000000000 -0400
> @@ -1697,8 +1697,17 @@ static int __cpufreq_set_policy(struct c
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0dprintk("governor switch\n");
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0/* end old governor */
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 if (data->governor)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 if (data->governor) {
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /*
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* Need to release the rwsem a=
round governor
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* stop due to lock dependency=
 between
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* cancel_delayed_work_sync an=
d the read lock
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* taken in the delayed work h=
andler.
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unlock_policy_rwsem_write(data->cpu=
);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__cpufreq_governor(data, CPUF=
REQ_GOV_STOP);
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lock_policy_rwsem_write(data->cpu);
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 }
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0/* start new governor */
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0data->governor =3D policy->governor;
>
>
> --
> Mathieu Desnoyers
> OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F =C2=A0BA06 3F25 A8F=
E 3BAE 9A68
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>



--=20
Regards
dave
