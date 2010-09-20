From: Nix <nix@esperi.org.uk>
Subject: Re: [Bug #18272] 2.6.35.*: horrible (exponential? >linear) slowdown to unusability (ACPI idle?)
Date: Mon, 20 Sep 2010 21:33:18 +0100
Message-ID: <87pqw8f94h.fsf@spindle.srvr.nix>
References: <r2gGqgg1zFC.A.LrE.w97lMB@chimera>
	<aRnAGz9xZ8K.A.lAF.897lMB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <aRnAGz9xZ8K.A.lAF.897lMB@chimera> (Rafael J. Wysocki's message of "Mon, 20 Sep 2010 21:57:22 +0200 (CEST)")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>, Venkatesh Pallipadi <venki@google.com>

On 20 Sep 2010, Rafael J. Wysocki said:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).

Resolved by 54ff7e595d763d894104d421b103a89f7becf47c in master,
which is landing in 2.6.35.5 imminently.
