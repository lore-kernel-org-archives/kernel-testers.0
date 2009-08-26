From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 26 Aug 2009 09:25:07 +0300
Message-ID: <84144f020908252325p88178f2yb0a76e033352b78d@mail.gmail.com>
References: <JuOd1ZASH0B.A.YGB.0zGlKB@chimera>
	 <Cg6cQYLdUxG.A.K-C.U2GlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=su3NV4enHsuIFrUvG8N4L1ul5pHmuyHVxFZacsQeSBE=;
        b=W0c4y4xMMR15U5sH3cqp5yflZEhiot377wsyk7unq3jDIkgSe1r55wH4rsFIy0Z1wH
         16qDD/FZIWUtj7j23W6vVjVXxWuXqLrOZw50g7nJ84A1WRdYHKdRpfAX9UVvwY/hJ1eh
         FFLwsp7OE+5Gk06qRvW6/29+AKPbfLMDRmGmw=
In-Reply-To: <Cg6cQYLdUxG.A.K-C.U2GlKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>

Hi Rafael,

On Wed, Aug 26, 2009 at 12:05 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13319
> Subject =A0 =A0 =A0 =A0 : Page allocation failures with b43 and p54us=
b
> Submitter =A0 =A0 =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (119 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124103=
897101088&w=3D4
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://lkml.org/lkml/2009/6/7/136
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0http://lkml.org/lkml/2009/7/26/213
> Handled-By =A0 =A0 =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0David Rientjes <rientjes-hpIqsD4AKldhl2p70BpVqQ@public.gmane.org=
m>
> Patch =A0 =A0 =A0 =A0 =A0 : http://patchwork.kernel.org/patch/37655/

=46YI, the fix (a new slub debugging option) is queued for 2.6.32 and w=
e
don't have plans to backport it to -stable because it depends on SLUB
out-of-memory diagnostic patches and the problem doesn't affect
production configs.

                                Pekka
