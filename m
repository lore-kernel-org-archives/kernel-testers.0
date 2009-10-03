From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Sat, 3 Oct 2009 15:36:01 +0200
Message-ID: <b637ec0b0910030636h66d13f21m31f1a894505b2067@mail.gmail.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910021917.31509.rjw@sisk.pl>
	 <b637ec0b0910021437l5a011f13qfa4dd541607a6dfb@mail.gmail.com>
	 <200910022342.47977.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=70Q5efqitJD+upaUsfB6geW2oyvRrKDAldGXSRBcbhk=;
        b=oibn0GXmJ1INf0XwgOrLxjORh9b5FAMu6ONBH8Au6BhLR3HCtaIJklMFCA0/UElWS4
         bQ/PW0+DS13L4r/+vLIk0+gWUrwlTygCFf49VUWSlc/URpT1Y+0DV7q4A9iFSCjKBSy6
         CltgAJVpxsnfJsk1Fbakungv3DLULqc7DQw2s=
In-Reply-To: <200910022342.47977.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi Rafael.

On Fri, Oct 2, 2009 at 11:42 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Friday 02 October 2009, Fabio Comolli wrote:
>> Hi.
>>
>> On Fri, Oct 2, 2009 at 7:17 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrot=
e:
>> > On Friday 02 October 2009, Fabio Comolli wrote:
>> >> Hi.
>> >> I suppose this is still valid. I had to work around it by rfkill-=
ing
>> >> the device during the suspend process and reenabling at resume ti=
me.
>> >
>> > Thanks for the update.
>> >
>> >> I can try to reproduce it with 2.6.31.1 if you want it.
>> >
>> > In fact I'm more interested in whether or not it's still present i=
n the Linus'
>> > tree.
>> >
>>
>> Well, I just tried 2.6.32-rc1-git3 and I have to say that it's mostl=
y
>> useless with my eeepc. The warning didn't show up after resume but i=
t
>> was impossible to reassociate with my AP and after some tentative th=
e
>> screen went blank.
>>
>> I was able to poweroff the netbook using the power button but I'm a
>> little scared to try again.
>
> It shouldn't kill the system cold dead, so as long as you have your d=
ata
> backed up, you can do some debugging IMHO.
>
>> Maybe I'll try with -rc3 or something.
>
> I guess you should report the issues you have at the moment. =C2=A0Th=
en, it's
> actually more likely that someone will take care of fixing them.
>

OK. This is what I've been able to come up with so far:

* with 2.6.31.x the warning shows up more or less every suspend-to-ram =
cycle;
* with 2.6.32-rc the warning never shows up;
* with 2.6.31.x when the warning shows up wifi is unusable until rfkill=
 cycle;
* whith 2.6.32-rc after suspend-to-ram cycle wifi is unusable and
rfkill does not cure it unless I rfkill it off - suspend-to-ram -
resume - rfkill it on. This seems to work.

When wifi does not work in 2.6.32-rc the messages show:

---------------------------------------------
[   49.647233] wlan0: direct probe to AP xx:xx:xx:xx:xx:xx (try 1)
[   49.649234] wlan0: direct probe responded
[   49.649244] wlan0: authenticate with AP xx:xx:xx:xx:xx:xx (try 1)
[   49.650546] wlan0: authenticated
[   49.650581] wlan0: associate with AP xx:xx:xx:xx:xx:xx (try 1)
[   49.652183] wlan0: RX AssocResp from xx:xx:xx:xx:xx:xx (capab=3D0x45=
1
status=3D12 aid=3D1)
[   49.652190] wlan0: AP denied association (code=3D12)
---------------------------------------------

The script I feed to pm-utils to have wifi work across the
suspend-to-ram cycle is just:

---------------------------------------------
#!/bin/sh
RFKILL=3D`basename /sys/devices/platform/eeepc/rfkill/*`

case "$1" in
	hibernate|suspend)
		cat /sys/devices/platform/eeepc/rfkill/$RFKILL/state > /tmp/suspend
		echo 0 > /sys/devices/platform/eeepc/rfkill/$RFKILL/state
		;;
	thaw|resume)
		cat /tmp/suspend > /sys/devices/platform/eeepc/rfkill/$RFKILL/state
		;;
	*) exit $NA
		;;
esac
---------------------------------------------

I can confirm that with 32-rc sometimes the screen flickers badly
after resume, for example running a simple dmesg command. However,
nothing is written in the logs, neither messages nor Xorg.0.log.
Chipset is i915.

Hope this helps. Please note that git is not an option for me on this m=
achine.

> Thanks,
> Rafael

Regards,
=46abio


> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>
