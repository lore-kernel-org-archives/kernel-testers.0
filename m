From: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13610] radeon kms invalid edid data at lvds
Date: Mon, 29 Jun 2009 10:18:41 +1000
Message-ID: <21d7e9970906281718q74023c28w67d0339a0096e228@mail.gmail.com>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	 <6JJ2m5kyucK.A.wuD.OJASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=PBBEChsv3iOvLyD53FM6wj/12R0qHw2uu9kx2hIWJ8I=;
        b=r7hhHTkRh4lfT6S4jGP3kuFGGVLnYbNATqx8+cGupGsdEQI+a5RLAmtWXOB8UdbxuE
         TLXeoaKY9/LSoCNUpvjAWJ9FAxQZaKwHBYXvquOok0vxWKXWVzW/xPjSLwRo0OFRAgKE
         tG1oiSzSfUqCiNn1sT4MkV+b4D9WKzi5vGkd0=
In-Reply-To: <6JJ2m5kyucK.A.wuD.OJASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Nicolas Reinecke <pl4nkton-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

On Mon, Jun 29, 2009 at 10:11 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13610
> Subject =A0 =A0 =A0 =A0 : radeon kms invalid edid data at lvds
> Submitter =A0 =A0 =A0 : Nicolas Reinecke <pl4nkton-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-06-23 19:53 (6 days old)
>
>

This isn't a regression, its running kms code in a staging driver.

Dave.
