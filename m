From: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Thu, 9 Jul 2009 09:42:14 +1000
Message-ID: <21d7e9970907081642l3ef6df5blde31df656cd74432@mail.gmail.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <200907080232.04551.elendil@planet.nl>
	 <21d7e9970907071950n27979df6j44444edd8528a598@mail.gmail.com>
	 <200907080700.33120.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=DP/EfCSROD68n4HiUd2JdyWnj+SLehzITGI0x3/7CLs=;
        b=UR9ETCwcjKwuW2TYHh96xBGQ1igkg3sJZ+bCl7ao08yehnph359EdpD0aTICqipKp2
         M6o+++NKbel6CRyYp/DPY8U+CEM3u8NlVXd8gzFHR8PweYLEuSCuSu3LWKs1S3HKFXf+
         Jpqpf9IIaFdDbcMN3efM13rw9+ZkoX5v5pfBg=
In-Reply-To: <200907080700.33120.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wed, Jul 8, 2009 at 3:00 PM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> On Wednesday 08 July 2009, Dave Airlie wrote:
>> On Wed, Jul 8, 2009 at 10:32 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
>> > On Tuesday 07 July 2009, Rafael J. Wysocki wrote:
>> >> The following bug entry is on the current list of known regressio=
ns
>> >> from 2.6.30. =A0Please verify if it still should be listed and le=
t me
>> >> know (either way).
>> >>
>> >> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13667
>> >> Subject =A0 =A0 =A0 : drm: display arifacts when X.Org is stopped
>> >> Submitter =A0 =A0 : Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
>> >> Date =A0 =A0 =A0 =A0 =A0: 2009-06-27 18:52 (10 days old)
>> >> References =A0 =A0: http://lkml.org/lkml/2009/6/27/105
>> >
>> > Problem is still there with -rc2. Dave said he'd try to reproduce,
>> > but I've not heard back from him yet.
>>
>> Don't suppose you have a 32-bit install you could also test with?
>
> You're in luck...
> I also get artifacts, though less severe, with .31-rc2 on my Toshiba
> Satellite A40 (32-bit kernel) during logout from X.Org. The switch is
> clean with .30.
>
>> Hopefully I can reproduce it on my box locally, otherwise its really
>> messy dealing with 2 drivers smashing on the same hw.
>
> Not sure why you're saying that. I would think VESA fb + X.Org is qui=
te
> common and also a very valid use case [1]. How else would you get the
> pretty kernel boot logo? ;-)
>
>> btw you get any wierd text mode issues without vesafb?
>
> If I boot .31-rc2 without vga=3D791 I don't get the artifacts. The ar=
tifacts
> also do not appear if I boot with 'nopat'. Checked on both systems.
>
> Note that I reported a similar issue once before, also reproducible o=
n
> both systems. In that case it was a bug in PAT which was eventually f=
ixed.
> See: http://bugzilla.kernel.org/show_bug.cgi?id=3D10843.
>
> Given that 'nopat' helps, you may want to check with Suresh on this o=
ne.
>

I've cc'ed Venki and Suresh, guys since I switched AGP to using the pag=
e
arrays instead and the new array setting functions, Frans has been seei=
ng
vesafb corruption when using non-KMS intel driver after X has finished =
running.
nopat makes it go away.

> [1] I'd even go so far as to feel it should be a standard test case f=
or
> video driver developers, given that this is the third time it's shown
> regressions :-) For the third case the bug was in the X.Org i830 driv=
er:
> http://bugs.freedesktop.org/show_bug.cgi?id=3D14481.

It might surprise you to learn this, but vesafb has never been consider=
ed
supportable by the X.org community, and you'll notice not very many dis=
tros
ship with it enabled, it breaks suspend/resume on many machines for exa=
mple.

As I said having two drivers thinking they own the GPU is a recipe for =
total
disaster and thats why we've designed the new KMS code so you can get
cool bootup logos and avoid the insanity dance.

However we shall endeavour to fix this issues as it may be systemic of =
something
else going wrong in the new PAT/AGP code.

Dave.
