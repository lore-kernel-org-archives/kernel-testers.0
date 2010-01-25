From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #15137] NULL pointer dereference in vlan_skb_recv
Date: Mon, 25 Jan 2010 13:30:24 -0800 (PST)
Message-ID: <20100125.133024.41664373.davem@davemloft.net>
References: <hE3x9c-4KZM.A.W0E.4JMXLB@chimera>
	<20100125134346.GA3749@hack>
	<201001252207.53023.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001252207.53023.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org, eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

=46rom: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Mon, 25 Jan 2010 22:07:52 +0100

> On Monday 25 January 2010, Am=E9rico Wang wrote:
>> On Sun, Jan 24, 2010 at 11:04:41PM +0100, Rafael J. Wysocki wrote:
>> >This message has been generated automatically as a part of a report
>> >of recent regressions.
>> >
>> >The following bug entry is on the current list of known regressions
>> >from 2.6.32.  Please verify if it still should be listed and let me=
 know
>> >(either way).
>> >
>> >
>> >Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15137
>> >Subject		: NULL pointer dereference in vlan_skb_recv
>> >Submitter	: Bruno Pr=E9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
>> >Date		: 2010-01-23 15:56 (2 days old)
>> >References	: http://marc.info/?l=3Dlinux-kernel&m=3D126426286507497=
&w=3D4
>> >Handled-By	: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> >Patch		: http://patchwork.kernel.org/patch/74999/
>> >		  http://patchwork.kernel.org/patch/75002/
>> >
>>=20
>> This one can be closed, patch from Eric is already applied by David =
Miller.
>=20
> Is it in the Linus' tree already?

No, but it will be there soon, I'll push it to him today.
:-)
