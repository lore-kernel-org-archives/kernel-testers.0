From: Jesse Gross <jesse-l0M0P4e3n4LQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #20462] 2.6.36-rc7-git2 - panic/GPF: e1000e/vlans?
Date: Sun, 19 Dec 2010 15:21:45 -0800
Message-ID: <AANLkTi==H5EE0-1JPkkLzSAF6NUBw0N6vyHqOr9OwH8T@mail.gmail.com>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
	<xqq2Z3iR9HJ.A.T2G.A2fDNB@chimera>
	<AANLkTi=8Wdv4bwcFb+FS6R+stnrxHo8tB8iCHoqNYRYu@mail.gmail.com>
	<201012192202.34894.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201012192202.34894.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Nikola Ciprich <extmaillist-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>

On Sun, Dec 19, 2010 at 1:02 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Sunday, December 19, 2010, Jesse Gross wrote:
>> On Sun, Dec 19, 2010 at 4:50 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.35 and 2.6.36.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.35 and 2.6.36. =A0Please verify if it still=
 should
>> > be listed and let the tracking team know (either way).
>> >
>> >
>> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D20462
>> > Subject =A0 =A0 =A0 =A0 : 2.6.36-rc7-git2 - panic/GPF: e1000e/vlan=
s?
>> > Submitter =A0 =A0 =A0 : Nikola Ciprich <extmaillist-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-10-15 7:10 (66 days old)
>> > Message-ID =A0 =A0 =A0: <20101015071008.GA8714-xTMdSLfc3Wpi51D5yjT6kKVXKuFTiq87@public.gmane.org>
>> > References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D128=
712984831303&w=3D2
>> > Handled-By =A0 =A0 =A0: Jesse Gross <jesse-l0M0P4e3n4LQT0dZR+AlfA@public.gmane.org>
>> > Patch =A0 =A0 =A0 =A0 =A0 : http://www.spinics.net/lists/netdev/ms=
g146227.html
>>
>> Fixed in 2.6.36.2.
>
> Thanks, closing.
>
> Do you know the commit that fixed it?

1b7cd15c8c89f5c26dc525d985e45c9bd9265fe2

Thanks.
