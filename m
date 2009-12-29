From: Oldrich Jedlicka <oldium.pro@seznam.cz>
Subject: Re: [Bug #14846] acer-wmi kernel OOPS, cannot create duplicit sysfs name
Date: Tue, 29 Dec 2009 16:37:28 +0100
Message-ID: <200912291637.29088.oldium.pro@seznam.cz>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.ck.mnhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752560AbZL2QG1@vger.kernel.org>
In-Reply-To: <NJVdobuNFNK.A.ck.mnhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Carlos Corbacho <carlos@strangeworlds.co.uk>

Hi,

On Tuesday 29 of December 2009 at 16:09:57, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me k=
now
> (either way).

When the patch is applied to 2.6.33-rc2, the regression goes away. The =
patch=20
fixes the problem.

Cheers,
Oldrich.

>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14846
> Subject		: acer-wmi kernel OOPS, cannot create duplicit sysfs name
> Submitter	: Old=C5=99ich Jedli=C4=8Dka <oldium.pro@seznam.cz>
> Date		: 2009-12-19 23:44 (11 days old)
> Handled-By	: Carlos Corbacho <carlos@strangeworlds.co.uk>
> Patch		: http://patchwork.kernel.org/patch/69795/

