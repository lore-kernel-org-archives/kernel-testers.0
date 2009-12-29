From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14922] 2.6.32 seemed to have broken nVidia MCP7A sata 
	controller
Date: Tue, 29 Dec 2009 11:15:27 -0600
Message-ID: <51f3faa70912290915s41d801c5y47f4fea914055274@mail.gmail.com>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	 <srmJ8vMxKPH.A.nSB.IwhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=iItqWls7qvFdTd40QxyEJqo+MN7dG5U+dIARh+7B+wQ=;
        b=dQMQa0aV4yWSf6Co8hHcnFkVP3RqLapvXz4Jh8AtPjop9CLC1snITYMDD3zGS911Li
         sKrn6FrB6Zq7vGtEn3V4ovb+z5QccKtPzN5xHSKM1AAOg1DHS3scsJKhlLW6jGWr0/Ie
         r+Hwaeg9S13d9AHyxMPzBN8Q4TvCnLiNUQlBw=
In-Reply-To: <srmJ8vMxKPH.A.nSB.IwhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Dec 29, 2009 at 9:28 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14922
> Subject =A0 =A0 =A0 =A0 : 2.6.32 seemed to have broken nVidia MCP7A s=
ata controller
> Submitter =A0 =A0 =A0 : Mike Cui <cuicui-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-19 6:13 (11 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-ide&m=3D126120323=
407742&w=3D4
> Handled-By =A0 =A0 =A0: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Robert Hancock <hancockrwd@gmail.c=
om>

Yes, FPDMA auto-activate optimization was introduced for AHCI in
2.6.32 and it appears it doesn't work quite right with either the
reporter's AHCI controller or their drive. I believe they were going
to try the drive with an Intel controller to see if it worked there.

It would be useful if we could get other success/failure reports with
either the particular drive, WDC WD800ADFS-75SLR2 (or at least other
WD Raptor ADFS-series) on other AHCI controllers, or other drives
which have AA support on the MCP7A chipset. One of the two needs
blacklisting for AA support. I'm leaning towards the controller since
other WD drives with AA support work fine on Intel AHCI.
