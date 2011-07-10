From: Pekka Enberg <penberg@kernel.org>
Subject: Re: [Bug #34942] [Bug] Kdump does not work when panic triggered due
 to MCE
Date: Sun, 10 Jul 2011 15:06:57 +0300
Message-ID: <CAOJsxLE9UBoMocTaWAt7DSoFFwGP5oD901XyeK6jGHEzUuSjDg@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.k7.hnYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=1fFrvzYsq0N9KJcASNPvo1+48gorSdZp3AsNDxY66tc=;
        b=x/OMXqUaetDBVIE/tu8cE+JEepY07Hq0Jc8BC9fSYwRoCb7KUpxzx1NzHN3EMYmTYM
         VqdeBJbpQn7GnT+R4Y7P69hyHpoZKtAjn0rC5ZDjz7wQU9LoDAWl3HKwTKCxhHgYrcbD
         gvqd9pskC1PLICLU0VgqhbM/z/IqYTkeik3N8=
In-Reply-To: <gK_efVqs2fP.A.k7.hnYGOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, "K.Prasad" <prasad@linux.vnet.ibm.com>, borislav.petkov@amd.com, Ingo Molnar <mingo@elte.hu>

On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
34942
> Subject =A0 =A0 =A0 =A0 : [Bug] Kdump does not work when panic trigge=
red due to MCE
> Submitter =A0 =A0 =A0 : K.Prasad <prasad@linux.vnet.ibm.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-05-06 16:54 (66 days old)
> Message-ID =A0 =A0 =A0: <20110506165412.GB2719@in.ibm.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D130470=
087226270&w=3D2

There's actually no mention that kdump worked with MCE in 2.6.38
either. So is this really a regression?

                        Pekka
