From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #37232] [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
Date: Wed, 29 Jun 2011 23:57:57 -0400
Message-ID: <4678134.li9aFGSxuF@segfault.sh0n.net>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <2202361.0SXGgnGr4r@segfault.sh0n.net> <201106292132.12265.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1309406282; bh=PCPypNDkBdVodZTVcTQNDhib02qO9jM1eFWztu4E5z0=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:To:Cc:Subject:Date:Message-ID:Organization:User-Agent:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type; b=r+KRJ/MraRgZ5U4gqdjDdgaR7wtCOw+lZBQJriZyIGwyQxv0l67w1jxQ7bJQCFhbRIEZDoqZiNaIVy0LTlPamAu6KQIva6H6l7tV6tOMR34yumFqOacO3Vu/VuDfdpmNz0g1jkJlxK/ymH/g65EMyB9RkeY4MU5A0m9P6e6n9hE=
In-Reply-To: <201106292132.12265.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

>>>On Wednesday, June 29, 2011 09:32:12 PM Rafael J. Wysocki wrote:
> > On Sunday, June 26, 2011 11:23:44 PM Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary
> > report of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the
> > tracking team know (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37232
> > Subject		: [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
> > Submitter	: Shawn Starr <XXXX.XX-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date		     : 2011-06-03 4:56 (24 days old)
> > Message-ID: <4478124.OuFNgaPiHS-RRHT56Q3PSMGBMjmSbuoWl6hYfS7NtTn@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=130707737616116&w=2

>>> Thanks for the update.
>>> Rafael

Hello Rafael/Linux devs,

You can close this bug now, regression is gone now. Both the SERR and the DMAR  (coming from iwlagn)
errors are resolved.

Working in: -rc5 (Fedora rawhide 3.0-0.rc5.git0.1.fc16.x86_64)

Thanks,
Shawn.
