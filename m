From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: [Bug #14016] mm/ipw2200 regression
Date: Wed, 26 Aug 2009 09:09:44 +0300
Message-ID: <84144f020908252309u5cff8afdh2214577ca4db9b5d@mail.gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	 <_yaHeGjHEzG.A.FIH.7sGlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=UC4egAeQzQ782+U1MXPwwSZ3xO+6F1f0CNvBDPGc9Do=;
        b=rmSMLeAYdApLeiypOabxmoPkahc3hV+hXvyMx3bV4Jul75imKSz4ZiFdG2l5JnGv7o
         MR+ubdZyfEY2EXq/7/sIX+GShrhO30hk4JAp/+emsCF+0CIqvf8aRHfTlrDFFps9faAZ
         nY+B1Bi7proUw30R9wWRXfpEsl+yBbboh23E4=
In-Reply-To: <_yaHeGjHEzG.A.FIH.7sGlKB@chimera>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Mel Gorman <mel@skynet.ie>, Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org

On Tue, Aug 25, 2009 at 11:34 PM, Rafael J. Wysocki<rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =A0Please verify if it still should be listed and let me kno=
w
> (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D1401=
6
> Subject =A0 =A0 =A0 =A0 : mm/ipw2200 regression
> Submitter =A0 =A0 =A0 : Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-08-15 16:56 (11 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D1250364372=
21408&w=3D4

If am reading the page allocator dump correctly, there's plenty of
pages left but we're unable to satisfy an order 6 allocation. There's
no slab allocator involved so the page allocator changes that went
into 2.6.31 seem likely. Mel, ideas?

Bartlomiej, can we see your .config, please?

                                 Pekka

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
