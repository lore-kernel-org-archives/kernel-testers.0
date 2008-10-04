From: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Subject: Re: [Bug #11442] btusb hibernation/suspend breakage in current -git
Date: Sat, 04 Oct 2008 22:17:11 +0200
Message-ID: <1223151431.11272.54.camel@violet.holtmann.net>
References: <0pOgGB.A.uLG.E475IB@wind>  <yWwteD.A.ab.L675IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <yWwteD.A.ab.L675IB@wind>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>

Hi Rafael,

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11442
> Subject		: btusb hibernation/suspend breakage in current -git
> Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Date		: 2008-08-25 11:37 (41 days old)
> References	: http://marc.info/?l=linux-bluetooth&m=121966402012074&w=4
> Handled-By	: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>
> Patch		: http://marc.info/?l=linux-bluetooth&m=121967226027323&w=4
> 		  http://bugzilla.kernel.org/show_bug.cgi?id=11442#c1

the patch is not the actual fix for it. It is just a band aid. As you
confirmed, the double free patch fixes it. See my pull request, but it
didn't make it into Linus' tree yet.

Regards

Marcel


Please pull from

    git://git.kernel.org/pub/scm/linux/kernel/git/holtmann/bluetooth-2.6.git master

This will update the following files:

 drivers/bluetooth/bpa10x.c |    2 --
 drivers/bluetooth/btusb.c  |    7 ++++---
 2 files changed, 4 insertions(+), 5 deletions(-)

through these ChangeSets:

Marcel Holtmann (2):
    [Bluetooth] Fix double frees on error paths of btusb and bpa10x drivers
    [Bluetooth] Add reset quirk for new Targus and Belkin dongles

