From: Andy Isaacson <adi@hexapodia.org>
Subject: Re: [Bug #13179] CD-R: wodim intermittent failures
Date: Mon, 1 Jun 2009 23:09:48 -0700
Message-ID: <20090602060948.GY28124@hexapodia.org>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <LEcEO2518_I.A.I5E.BKbIKB@chimera> <4A24ADB9.6010903@gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758888AbZFBGJ4@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4A24ADB9.6010903@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Robert Hancock <hancockrwd@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Joerg Schilling <Joerg.Schilling@fokus.fraunhofer.de>

On Mon, Jun 01, 2009 at 10:42:33PM -0600, Robert Hancock wrote:
> Rafael J. Wysocki wrote:
> >This message has been generated automatically as a part of a report
> >of recent regressions.
> >
> >The following bug entry is on the current list of known regressions
> >from 2.6.29.  Please verify if it still should be listed and let me know
> >(either way).
> >
> >
> >Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13179
> >Subject		: CD-R: wodim intermittent failures
> >Submitter	: Andy Isaacson <adi@hexapodia.org>
> >Date		: 2009-04-21 1:52 (40 days old)
> >References	: http://marc.info/?l=linux-kernel&m=124027879214231&w=4
> 
> Last I heard the reporter was going to attempt a bisect, that was a 
> while ago. I don't really have any suggestions other than that.

I've been having trouble reliably bisecting; sometimes seemingly-bad
kernels work OK and other times thought-OK kernels fail even though I've
stopped Gnome and HAL.

At this point I'm suspecting intermittent hardware failure and am
getting set up to test on a similar machine.

-andy
