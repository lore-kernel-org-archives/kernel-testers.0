From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: =?utf-8?q?[Bug=20#11550]=20pnp:=20Huge=20number=20of=20"io=20resource=20overlap"=20messages?=
Date: Sat, 27 Sep 2008 17:56:48 +0200 (CEST)
Message-ID: <V8eU91268VO.A.f4G.07m3IB@albercik>
References: <t_PcrlC6ypI.A.tGG.G7m3IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <t_PcrlC6ypI.A.tGG.G7m3IB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Rene Herman <rene.herman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11550
Subject		: pnp: Huge number of "io resource overlap" messages
Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-09-09 10:50 (19 days old)
References	: http://marc.info/?l=linux-kernel&m=122095745403793&w=4
Handled-By	: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>
		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=122246533505643&w=4

