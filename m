From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 09:55:22 +0300
Message-ID: <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>
	 <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=F2raUant5mjqP5G9nuBTu14tPAiaHo379r9of+tQtW8=;
        b=OekMf6eulLHXCmIsThIzw9KeUhIu/2FVC/htqd6rBr6QRGWTXkC8Gv6qVSFuROdRRs
         Ei5y9ZRAqYjJWzkSl3AlOIFAvTmaGiiYs5s/xd6L2JY3S7jgAB5eROzn4veH4gbawk9Z
         TTSLG3QO6vrq6EXqCB6QtJlKY3gmFy1CvCaB0=
In-Reply-To: <alpine.DEB.2.00.0906291642520.17663-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

Hi David,

On Tue, Jun 30, 2009 at 2:47 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wr=
ote:
> On Mon, 29 Jun 2009, Larry Finger wrote:
>
>> > Bug-Entry =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D13319
>> > Subject =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures with b4=
3 and p54usb
>> > Submitter =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (61 days ol=
d)
>> > References =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12410389710=
1088&w=3D4
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://lkml.org/lkml/2009/6/7/136
>> > Handled-By =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>>
>> The cause of these failures has been determined. The wireless
>> subsystem frequently requests buffers of size 4096, but when SLUB
>> debugging is enabled and the debug info is added, the request become=
s
>> of order 1 and memory becomes fragmented.
>>
>> A controversial "fix" in which SLUB debugging was disabled for
>> allocations where adding such debugging info would increase the orde=
r
>> was discussed and tried. With a quick look at the commit list for
>> Linus's tree, I don't see that such a patch is available, but I will
>> be corrected if I missed it.
>>
>
> I'd disagree with disabling slub debugging by default for caches wher=
e
> oo_order(s->min) increases as the result of using it. =A0This particu=
lar
> page allocation failure is happening for, presumably, kmalloc-4096, a=
nd
> the system has 4K pages. =A0Disabling debugging for that cache (and a=
ny of
> its aliases) implicitly will lead to errors going undiagnosed as a re=
sult.

Well, I obviously don't agree here because kmalloc-4096 debugging
causes problems in the real world. Furthermore, SLUB never supported
debugging for objects that big historically because of page allocator
passthrough. And with Mel Gorman's page allocator optimizations, we
might be going back to that.

So we should fix SLUB debugging as outlined by Mel Gorman and
Christoph Lameter. I simply haven't had the time to do it. Patches are
welcome!

                              Pekka
