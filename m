From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #38132] [Warning] 2.6.39.x latencytop
Date: Mon, 11 Jul 2011 10:34:05 +0300
Message-ID: <CAOJsxLHitazDJEjiD3j_nK_4hQoiGVo_08NP_nR3FpCTqa4HwQ@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.Y3H.jlYGOB@chimera>
	<CAOJsxLEGqpcQP3S+TLBjpRsM=UTk=zyuHBoswXkVwbHsLaDqqg@mail.gmail.com>
	<1310333145.2269.6.camel@gandalf.stny.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=tFIl7uNI3vmpiWg73HV1OUl21LKOnl6wLd7y/22TwPI=;
        b=lrJMfhwwCWpisGrSAM6lJWYDHdad8QIlBugUoVo/MBDJww7jn7JLRD+askRZ7jIW9r
         D6vl+uQ43p95uouVP1wM33x0Z5F+qv44g2/6CRFYNddNn0RFmeOljuTZ+Xc76SEt8cFH
         UCyHoU8hzVBodsmuonf0F67X+tcDe28k+iL2U=
In-Reply-To: <1310333145.2269.6.camel-f9ZlEuEWxVcI6MkJdU+c8EEOCMrvLtNR@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrew Watts <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

On Mon, Jul 11, 2011 at 12:25 AM, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org> =
wrote:
> On Sun, 2011-07-10 at 14:53 +0300, Pekka Enberg wrote:
>> On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wro=
te:
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.38 and 2.6.39.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.38 and 2.6.39. =A0Please verify if it still=
 should
>> > be listed and let the tracking team know (either way).
>> >
>> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D38132
>> > Subject =A0 =A0 =A0 =A0 : [Warning] 2.6.39.x latencytop
>> > Submitter =A0 =A0 =A0 : Andrew Watts <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-06-14 17:07 (27 days old)
>> > Message-ID =A0 =A0 =A0: <80098.5633.qm-tGSp4LqzbTn6X00i2u5GFvu2YVrzzGjV0BYs2hP7t38@public.gmane.org=
m>
>> > References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D130=
807128506490&w=3D2
>>
>> This is a WARN_ON added in commit 6752ab4a ("tracing: Deprecate
>> tracing_enabled for tracing_on") that lets the user know about
>> deprecated ABI. It's somewhat unfortunate that there's no mention in
>> the changelog if everyone agreed on the deprecation or not...
>>
>> That said, assuming the deprecation is OK (hi Steven, Frederic, Ingo=
!)
>> I think this issue can be closed.
>
> I deprecated it because I said I would for the last year ;)
>
> The tracing_enabled never did what it was suppose to do. It was suppo=
se
> to be a "quick" way to disable tracing without fully disabling it. It
> was suppose to try to turn things off to a low overhead but not fully
> off without any overhead. The problem is that it never really worked
> well. The only tracer that does anything different with it as suppose=
 to
> tracing_on, is the irqsoff tracers. They stop looking at max latencie=
s
> when you echo 0 into tracing_enabled. But that's it. Everything else,
> it's just the same as echoing 0 into tracing_on. I think the irqsoff
> tracers now even look at tracing_on if it should trace a max latency =
or
> not, so tracing_enabled doesn't even help with that.
>
> We can keep it around but I don't see any good reason for it besides =
not
> having latency top give a warning.

AFAICT, if you go ahead with the deprecation and actually remove the
file, you'll break latencytop fsync tracing.

On Mon, Jul 11, 2011 at 12:25 AM, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org> =
wrote:
> Question: Why is latency top even touching this file?

Looking at the sources, it seems to use it to enable fsync tracing. I
don't know the details so lets CC Arjan.
