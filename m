From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #12501] build bug in eeepc-laptop.c
Date: Wed, 4 Mar 2009 11:02:44 +0200
Message-ID: <84144f020903040102o1ddc6ee7l31bf4cf928092773@mail.gmail.com>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera>
	 <SLCXkuHtxAO.A.nSG.-WarJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=G5Aw3IesJxr4dojMzGM9FpyDwEWHRUx0wJ+isVpKbFo=;
        b=E8sO4+UfDUQduiU93DHGBgmUbKQb1Cgluw85xqVxrJhBAIc64s7l4nwbFq//GGFHpa
         Mi65jP83oMruI2jvgGelaCcWCqsRV6qgBxNA4PpRA+FqwSN+WuYCj3/VkCSIGoopZD7K
         pXX4HiW96omiRetBiukrNJDe6eb1iHTmZ++Fk=
In-Reply-To: <SLCXkuHtxAO.A.nSG.-WarJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Tue, Mar 3, 2009 at 9:25 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
12501
> Subject =A0 =A0 =A0 =A0 : build bug in eeepc-laptop.c
> Submitter =A0 =A0 =A0 : Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-01-14 17:25 (49 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/1/14/315

There's seems to be a patch for the bug here:

http://bugzilla.kernel.org/attachment.cgi?id=3D20341&action=3Dview
