From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15601] [BUG] SLOB breaks Crypto
Date: Tue, 20 Apr 2010 09:40:41 +0300
Message-ID: <z2h84144f021004192340z98fcc1c5m1544233f2ea6c0c4@mail.gmail.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.mIB.aSSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:received:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=gQnbB5UJhWSvfNOOCiD+OwGbePk0m5Ln5/em0kOpWrU=;
        b=bO1g/dLgfo/4BVRwiLTteSLN5bJ6dgw1kl1MndWrfwODrDFtoFJlAAwHRpIagkG6OI
         0abvHo4W4BJl4KkHzJ9R5RpZRp2TTd8Hh2/uJswP/OhfNgpbwGyEHheP+t1cZSOjTQbQ
         Xf9dloKa+LaWEaxg7f06ZQy6MgGKu0MOvAZ9s=
In-Reply-To: <YeFfFNFyTSF.A.mIB.aSSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "michael-dev-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org"@ogre.sisk.pl, Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>, Matt Mackall <mpm-VDJrAJ4Gl5ZBDgjK7y7TUQ@public.gmane.org>

On Tue, Apr 20, 2010 at 6:19 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.33. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15601
> Subject =A0 =A0 =A0 =A0 : [BUG] SLOB breaks Crypto
> Submitter =A0 =A0 =A0 : michael-dev-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-03-15 13:39 (36 days old)
> Message-ID =A0 =A0 =A0: <4B9E38AF.70309-1SGGS//iJ+Y38rf8aCqVIw@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126866=
044724539&w=3D2

Ping?
