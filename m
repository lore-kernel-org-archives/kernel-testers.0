From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 11:24:53 +0300
Message-ID: <84144f020906300124n24e206b5tc85dd5cc4661bde7@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>
	 <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>
	 <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
	 <alpine.DEB.2.00.0906300032310.11018@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=sXgZgASwQJKFGoMeaypuQo0r7FknRa5UWzVAP1/KC6A=;
        b=TiCyVrgKag7CtVnBu9yp53ZvP9JGpTAojXhUR+3fUTCVK8HMqy4JhlDwmRfdMAxpYK
         4hJh6Bh7u4Zlze3hsP2pyEd8q1O+CBdPSGEJdyQYY+22M7dP8LMoDx7Pyiy7KtSjfuSy
         XDgGjsWMovg0JPxfHfg/mBnsTud5E+5BqQsxY=
In-Reply-To: <alpine.DEB.2.00.0906300032310.11018-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Hi David,

On Tue, 30 Jun 2009, Pekka Enberg wrote:
>> > I'd disagree with disabling slub debugging by default for caches w=
here
>> > oo_order(s->min) increases as the result of using it. =A0This part=
icular
>> > page allocation failure is happening for, presumably, kmalloc-4096=
, and
>> > the system has 4K pages. =A0Disabling debugging for that cache (an=
d any of
>> > its aliases) implicitly will lead to errors going undiagnosed as a=
 result.
>>
>> Well, I obviously don't agree here because kmalloc-4096 debugging
>> causes problems in the real world.

On Tue, Jun 30, 2009 at 10:47 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> w=
rote:
> I don't think CONFIG_SLUB_DEBUG_ON is generally the configuration use=
d in
> the real world.

It is, hence the epic bug report that's eaten too many man hours
already! Look, we encourage _testers_ to turn all as much as debugging
options as possible so we catch bugs early. That why the only sane
defaults are the ones that don't cause other problems!

I don't know why you want to argue this. It's simply not an option to
say "stupid user, fix your config" in core code like the slab
allocator. Enabling CONFIG_SLUB_DEBUG_ON is a very reasonable thing to
do when you are a tester looking for bugs.

On Tue, 30 Jun 2009, Pekka Enberg wrote:
>> So we should fix SLUB debugging as outlined by Mel Gorman and
>> Christoph Lameter. I simply haven't had the time to do it. Patches a=
re
>> welcome!

On Tue, Jun 30, 2009 at 10:47 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> w=
rote:
> You're referring to `slub_debug=3DA'? =A0I think CONFIG_SLUB_DEBUG_ON=
 should
> continue to enable debugging on all slab caches and in instances wher=
e it
> causes page allocation failures such in Larry's case because
> oo_order(s->min) with debugging on is greater than oo_order(s->min) w=
ith
> debugging off, you can emit a friendly warning in your recently added
> slab_out_of_memory() about using `slab_debug=3D-,<cache>'.
>
> We have a disagreement about which is the default behavior, but I wou=
ld
> opt on the side of adding exemptions to a debug configuration option =
as
> opposed to requiring additional command line parameters to be fully
> enabled.

Yup, I was referring to slub_debug=3DA and no, I don't agree with you
that it should be on by default. Only people who know what they're
doing should enable the option and a random tester by definition
doesn't (no offence to Mr. Random Tester).

                                                   Pekka
