From: =?utf-8?q?Pawe=C5=82_Sikora?= <pluto@agmk.net>
Subject: Re: [Bug #20472] [2.6.35.5 -> .7] INFO: task rpcbind:14163 blocked for more than 120 seconds.
Date: Mon, 18 Oct 2010 19:51:34 +0200
Message-ID: <201010181951.34620.pluto@agmk.net>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera> <7N-qxsaxKCN.A.TEB.0j1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7N-qxsaxKCN.A.TEB.0j1uMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Trond Myklebust <trond.myklebust@fys.uio.no>

On Sunday 17 October 2010 22:21:48 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.35.  Please verify if it still should be listed and let the tracking team
> know (either way).

hi,

hot news from the front, recent tests on the pld-linux.org vendor kernel
show that the random task blocking in 2.6.35.7 during medium/heavy load (~4..25)
is related to the grsecurity patch. we'll forward problem report to the
grsec maintainer asap...
