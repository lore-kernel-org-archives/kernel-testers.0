From: Andreas Friedrich <andreas.friedrich@ts.fujitsu.com>
Subject: Re: [Bug #14902] Boot ends not on tty1
Date: Tue, 5 Jan 2010 09:57:43 +0100
Message-ID: <20100105085743.GA13491@upset.ux.pdb.fsc.net>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.WjB.MwhOLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753472Ab0AEI5s@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=ts.fujitsu.com; i=andreas.friedrich@ts.fujitsu.com;
  q=dns/txt; s=s1536b; t=1262681914; x=1294217914;
  h=from:sender:reply-to:subject:date:message-id:to:cc:
   mime-version:content-transfer-encoding:content-id:
   content-description:resent-date:resent-from:resent-sender:
   resent-to:resent-cc:resent-message-id:in-reply-to:
   references:list-id:list-help:list-unsubscribe:
   list-subscribe:list-post:list-owner:list-archive;
  z=From:=20Andreas=20Friedrich=20<andreas.friedrich@ts.fuji
   tsu.com>|Subject:=20Re:=20[Bug=20#14902]=20Boot=20ends=20
   not=20on=20tty1|Date:=20Tue,=205=20Jan=202010=2009:57:43
   =20+0100|Message-ID:=20<20100105085743.GA13491@upset.ux.p
   db.fsc.net>|To:=20"Rafael=20J.=20Wysocki"=20<rjw@sisk.pl>
   |Cc:=20Linux=20Kernel=20Mailing=20List=20<linux-kernel@vg
   er.kernel.org>,=0D=0A=09Kernel=20Testers=20List=20<kernel
   -testers@vger.kernel.org>,=0D=0A=09Wolfgang=20Erig=20<Wol
   fgang.Erig@ts.fujitsu.com>|Mime-Version:=201.0
   |In-Reply-To:=20<srmJ8vMxKPH.A.WjB.MwhOLB@chimera>
   |References:=20<oBElxfTZdhL.A.bx.-vhOLB@chimera>=20<srmJ8
   vMxKPH.A.WjB.MwhOLB@chimera>;
  bh=XjZ+jpr2C/ZcXW8ScCPyYsO8x76jHl2ntr/RQ6Wn1Nw=;
  b=kLbkoXb7pKbNlKRhJlexj+A+IL9ssaNBqOFEGtJ15k4D4aSXB+WatjHm
   81pyh7GmUfuN0/ach3Qm/1VCiz0cDVETf2NX/VRUIQCrsJZiutKUBheck
   8VJuk4Ep2474y/ExslwBKGXv2Jup21IQZvpc4pgyTnlfyk/ZDBCPrSlZ7
   6XQL7Cw+/TxlkxYWOqwwZKlJa5uDd7sOx6uFoC80KEAL3xoK64H6qkJLR
   KlHHj3Z1/zrQ5TbrtoYu2obg8KRZr;
Content-Disposition: inline
In-Reply-To: <srmJ8vMxKPH.A.WjB.MwhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Wolfgang Erig <Wolfgang.Erig@ts.fujitsu.com>

Hi Rafael,

On Di, Dez 29, 2009 at 04:28:54 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).

the problem was gone after the latest Debian lenny and etch upgrades
(one of libexpat1, libltdl3, libpq4/5 does the fix). I think that the 
kernel change which came with e11c675ede0d42a405ae595528bf0b29ce1ae56f
is now supported in Debian, so it is no longer a kernel issue.

Please remove the error from the regression list.

Thanks,
Andreas

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14902
> Subject		: Boot ends not on tty1
> Submitter	: Andreas Friedrich <andreas.friedrich@ts.fujitsu.com>
> Date		: 2009-12-15 8:05 (15 days old)
> References	: http://marc.info/?l=linux-kernel&m=126086495304263&w=4
