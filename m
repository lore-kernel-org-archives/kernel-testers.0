From: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #38522] address space collision error message on boot
Date: Mon, 11 Jul 2011 14:18:48 -0700
Message-ID: <CAA9_cmeY1Q-L_iMQfsf-KWufZzpkMSWzQ42ep=bQP9XZwyV-Lw@mail.gmail.com>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
	<XNkIyhV6dgF.A.D4G.TCYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=A345d9ijk6Y7wKMIUq2kIW9gMZzA5eMPYNTwSzyMdjM=;
        b=DCWf2PaUKcnN/4oHC/2hfUlUpDsUGBSsAj4bWA7wlr5p2BePVbea5ZmLBrLH/nyqLK
         KHytUj9JhzGCoMfqN60dhz96qEza+Frs/xtMlvztpaGqB0pIgEjDAco6KPpWMxUfGz50
         bZHNwEc3KPGpOuo2tZoEuVm/f92qFRF2rI8kM=
In-Reply-To: <XNkIyhV6dgF.A.D4G.TCYGOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Jiang <dave.jiang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Jools Wills <jools-ApNQbik20ZdhgJEaYHuxyvXRex20P6io@public.gmane.org>, bhelgaas-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org

[ adding Bjorn ]

On Sun, Jul 10, 2011 at 3:38 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.39. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).

The patch from the bugzilla entry is not yet upstream.

>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
38522
> Subject =A0 =A0 =A0 =A0 : address space collision error message on bo=
ot
> Submitter =A0 =A0 =A0 : Jools Wills <jools-ApNQbik20ZdhgJEaYHuxyvXRex20P6io@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-06-29 02:28 (12 days old)
> First-Bad-Commit: http://git.kernel.org/linus/5d94e81f69d4b1d1102d3ab=
557ce0a817c11fbbb

Per the commentary in the bugzilla this commit makes the warning
message appear on 64-bit builds, but 32-bit has the same problem on
affected platforms (without the commit).

Bjorn has a proposed patch [1] that just downgrades the warning since
system operation does not appear to be affected.

--
Dan

[1]: https://bugzilla.kernel.org/attachment.cgi?id=3D64102
