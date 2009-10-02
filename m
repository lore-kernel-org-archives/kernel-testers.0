From: Nix <nix@esperi.org.uk>
Subject: Re: [Bug #14261] e1000e jumbo frames no longer work: 'Unsupported MTU setting'
Date: Fri, 02 Oct 2009 21:33:34 +0100
Message-ID: <877hvd8rj5.fsf@spindle.srvr.nix>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	<COE24pZSBH.A.jd.5MTxKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758168AbZJBUeJ@vger.kernel.org>
In-Reply-To: <COE24pZSBH.A.jd.5MTxKB@chimera> (Rafael J. Wysocki's message of "Thu,  1 Oct 2009 21:56:03 +0200 (CEST)")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alexander Duyck <alexander.duyck@gmail.com>

On 1 Oct 2009, Rafael J. Wysocki stated:

> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).

The patch fixes it.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14261
> Subject		: e1000e jumbo frames no longer work: 'Unsupported MTU setting'
> Submitter	: Nix <nix@esperi.org.uk>
> Date		: 2009-09-26 11:16 (6 days old)
> References	: http://marc.info/?l=linux-kernel&m=125396433321342&w=4
> Handled-By	: Alexander Duyck <alexander.duyck@gmail.com>
> Patch		: http://patchwork.kernel.org/patch/50277/

(Possibly a stable candidate? It's not in 2.6.31.2-to-be, perhaps the
only patch that isn't. ;) )
