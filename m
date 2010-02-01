From: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking 
	dependency detected
Date: Mon, 1 Feb 2010 19:01:25 +0100
Message-ID: <9ea470501002011001s7734a20ft4dd5d181baf714c3@mail.gmail.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.DLD.q8hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=EgKpFNZcmQNFRmleaRzfyHpt6az5//CxKdgXGq6ccDQ=;
        b=V3hVbuGmUaD/kSzdjDFjPwpMNEdFVyA6nBdzoOzzAecg3Fx34iPHKWjk+xqfejUm9q
         YJxLM3miyrF5TXWJkAobgI9r8Al5vRBOWsgT3XF88Jz1WDoKUqczwd5cBNKCtirYd8XI
         seHbPavYJgL8TNLBOVvxEEAvSsPpKbM889jAk=
In-Reply-To: <d3IDKWHT5gE.A.DLD.q8hZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, "Eric W. Biederman" <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>

On Mon, Feb 1, 2010 at 1:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14949
> Subject =A0 =A0 =A0 =A0 : drm_vm.c:drm_mmap: possible circular lockin=
g dependency detected
> Submitter =A0 =A0 =A0 : Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-26 9:45 (37 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126182=
073616279&w=3D4
> Handled-By =A0 =A0 =A0: Eric W. Biederman <ebiederm-BGArkANP9klv6pq1l3V1OWGXanvQGlWp@public.gmane.org=
m>
> Patch =A0 =A0 =A0 =A0 =A0 : http://patchwork.kernel.org/patch/70461/

Yes, this is fixed.

--=20
Regards/Gruss,
Boris
