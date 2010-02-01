From: Neil Horman <nhorman@tuxdriver.com>
Subject: Re: [Bug #15196] kmem_cache_create: duplicate cache ccid2_h
Date: Mon, 1 Feb 2010 06:55:18 -0500
Message-ID: <20100201115518.GA25094@hmsreliant.think-freely.org>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
 <d3IDKWHT5gE.A.8sB.Q7hZLB@chimera>
 <7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607@mail.gmail.com>
 <20100131.232050.266652459.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20100131.232050.266652459.davem@davemloft.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Miller <davem@davemloft.net>
Cc: xtfeng@gmail.com, rjw@sisk.pl, htd@fancy-poultry.org, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Sun, Jan 31, 2010 at 11:20:50PM -0800, David Miller wrote:
> From: Xiaotian Feng <xtfeng@gmail.com>
> Date: Mon, 1 Feb 2010 11:30:02 +0800
>=20
> > On Mon, Feb 1, 2010 at 8:22 AM, Rafael J. Wysocki <rjw@sisk.pl> wro=
te:
> >> This message has been generated automatically as a part of a repor=
t
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regression=
s
> >> from 2.6.32. =A0Please verify if it still should be listed and let=
 me know
> >> (either way).
> >>
> >>
> >> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D15196
> >> Subject =A0 =A0 =A0 =A0 : kmem_cache_create: duplicate cache ccid2=
_h
> >> Submitter =A0 =A0 =A0 : Heinz Diehl <htd@fancy-poultry.org>
> >> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-30 18:33 (2 days old)
> >> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126=
487640324942&w=3D4
> >=20
> > Cced Neil,
> >=20
> > I think this one is introduced by commit
> > de4ef86cfce60d2250111f34f8a084e769f23b16,
> > passing char *slab_name_fmt as function parameter, but vsnprintf is
> > using sizeof(slab_name_fmt),
> > which is 8 (or 4 in 32bit kernel) instead of 32 as old version.
> >=20
> > Does following patch resolve this bug, Heinz?
>=20
> There seems to be even more to this than that.  Neils
> patch seems to need completely reverting.
>=20
> See the patch set posted by Gerrit Renker:
>=20
> http://marc.info/?l=3Dlinux-netdev&m=3D126500585823775&w=3D2
> http://marc.info/?l=3Dlinux-netdev&m=3D126500591923880&w=3D2
>=20


Dave, some of this doesn't make the least bit of sense to me.  I get th=
e sizeof
error, thats clear (and I apologize, I should have seen that), but Gerr=
its
revert of the dccp_probe changes is non-sensical.  I'm not sure I even =
follow
the comments:

>Previously (during about 4 years of this module's history) there had n=
ever
>been a problem with the 'silent dependency' that the commit tried to f=
ix:
>this dependency is deliberate and required, since dccp_probe performs =
probing
>of dccp connections and hence needs to know about dccp internals.

He claims this dependency is deliberate and requires, to which I agree,=
 but he
would seem to fix that by making the dccp_probe module error out in the=
 event
that dccp wasn't loaded.  Why bother with that?
Neil

