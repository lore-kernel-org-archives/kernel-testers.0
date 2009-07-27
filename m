From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 27 Jul 2009 10:08:38 +0300
Message-ID: <84144f020907270008h2a985278of68e70ff1ee9265c@mail.gmail.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	 <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net>
	 <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=88dZIeUh2yYAmIiByI46so8yiPRXdws6tfKo9Q8okY4=;
        b=exjzdoYdLrXgonTL1pixyVoUpJucPRvXzsydTWBwUxF+rN8/aAF+CM+kNeeNoFlHpR
         U0shmf5J3J5pKwsjZDpmJpU4N/WjEAEnTH0FaGUUD01aQU5mtc/W5cyOpt/ttjmz0PP8
         /OYqpx17QDbSF/43Wq+kgwN7vAw6UGdGq63hQ=
In-Reply-To: <alpine.DEB.2.00.0907261722140.21259-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, Jul 27, 2009 at 3:24 AM, David Rientjes<rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wr=
ote:
> On Sun, 26 Jul 2009, Larry Finger wrote:
>
>> Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a repor=
t
>> > of regressions introduced between 2.6.29 and 2.6.30.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.29 and 2.6.30. =A0Please verify if it still=
 should
>> > be listed and let me know (either way).
>> >
>> >
>> > Bug-Entry =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D13319
>> > Subject =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures with b4=
3 and p54usb
>> > Submitter =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (89 days ol=
d)
>> > References =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12410389710=
1088&w=3D4
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 http://lkml.org/lkml/2009/6/7/136
>> > Handled-By =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>>
>> This bug was fixed by commit 781b2ba6eb5f22440afac9c79a89ebd6e3674a6=
0
>> entitled "SLUB: Out-of-memory diagnostics" by Pekka Enberg
>> <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> and dated Wed Jun 10 18:50:32 2009 +0300.
>>
>
> Hmm, I'm remembering differently. =A0I thought the root problem here =
has
> only been fixed in Pekka's slab-2.6.git tree with "slub: add option t=
o
> disable higher order debugging slabs" and isn't currently in Linus' t=
ree.

Yup, the fix is in slab.git and queued for 2.6.32. There was some
complaints from Christoph from the patch that need to be addressed
still.

                                        Pekka
