From: Alexander Beregalov <a.beregalov@gmail.com>
Subject: Re: [Bug #13124] ioatdma: DMA-API: device driver frees DMA memory 
	with wrong function
Date: Sun, 26 Apr 2009 20:06:07 +0400
Message-ID: <a4423d670904260906y3db7e256g371185ec31717054@mail.gmail.com>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	 <Fg2zLW93smL.A.qeD.Md48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754152AbZDZQGX@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=ly37yOQlEzt02DRRh0IcD5bWyl2GEQP8/GieQVEHb+o=;
        b=oeigE7lMrf1d3uqLAcd/gvqJMKKBMOXdtMzsfZ10AHZ2ZeeZySYtucC3nCAxzJwssB
         8YSnbl9CSrvza0wi16HjvJj+dbnCpalN+8p6p++JDsCZBzG0yZvEZcjnppJHUN8nFl9q
         trR0tnskgElvkbK/C/QZeAkFxNgmJnDwwZhlw=
In-Reply-To: <Fg2zLW93smL.A.qeD.Md48JB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>

2009/4/25 Rafael J. Wysocki <rjw@sisk.pl>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.29. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13124
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : ioatdma: DMA-API: device driver=
 frees DMA memory with wrong function
> Submitter =C2=A0 =C2=A0 =C2=A0 : Alexander Beregalov <a.beregalov@gma=
il.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-04-09 12:36 (17 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D123928064322503&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Dan Williams <dan.j.williams@intel.c=
om>

Patch is available, http://patchwork.kernel.org/patch/19621/

Thanks.
