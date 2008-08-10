From: "Jaswinder Singh" <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11271] BUG: fealnx in 2.6.27-rc1
Date: Sun, 10 Aug 2008 11:57:42 +0530
Message-ID: <3f9a31f40808092327h272ba73emcfc1ead6b6d1099@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.T-.DDjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=kbSm5qUnK4LBsd8cWo5r2N+Etc1DuSvWIhMQ8yhl+VU=;
        b=bL1Jny7cc3VVdPlBgppUPxlEKWrBzkFAhYUmtZD9WIE+HRy53S8i1QulW4BkOxQTRG
         h+ss1AiatEfvg2TiHDJ1/7i8noQrTDyln/sROYDUrV0mXXIXB62qaAxct70xx+R3Swcu
         EcNcXP7GC1E9jgrPHItnLO785Is+h3YyKdOR8=
In-Reply-To: <cX_-nNkxKaF.A.T-.DDjnIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hello all,

On Sun, Aug 10, 2008 at 4:13 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11271
> Subject         : BUG: fealnx in 2.6.27-rc1
> Submitter       : Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-08-05 14:58 (5 days old)
> References      : http://marc.info/?l=linux-netdev&m=121794762016830&w=4
>
>

This still exists on 2.6.27-rc2 when I transfer some data on RealTek 8139C NIC.

01:00.0 Ethernet controller: MYSON Technology Inc SURECOM EP-320X-S
100/10M Ethernet PCI Adapter
	Subsystem: MYSON Technology Inc SURECOM EP-320X-S 100/10M Ethernet PCI Adapter
	Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV+ VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B+ ParErr- DEVSEL=medium >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 32 (8000ns min, 16000ns max), Cache Line Size: 64 bytes
	Interrupt: pin A routed to IRQ 21
	Region 0: I/O ports at d800 [size=256]
	Region 1: Memory at ff8ffc00 (32-bit, non-prefetchable) [size=1K]
	Expansion ROM at e6a00000 [disabled] [size=64K]
	Capabilities: [88] Power Management version 2
		Flags: PMEClk- DSI- D1+ D2- AuxCurrent=375mA PME(D0-,D1+,D2-,D3hot+,D3cold+)
		Status: D0 PME-Enable- DSel=0 DScale=0 PME-
	Kernel driver in use: fealnx

If you need more info or need help in debugging please let me know.

Thank you,

Jaswinder Singh.
