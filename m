From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: [BISECTED] EEE PC hangs when booting off battery
Date: Tue, 14 Apr 2009 08:17:28 -0700
Message-ID: <20090414081728.10de978a@infradead.org>
References: <49E065CF.6040408@tuffmail.co.uk>
	<49E44415.1040500@tuffmail.co.uk>
	<49E456B5.6030006@tuffmail.co.uk>
	<200904140859.02188.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
In-Reply-To: <200904140859.02188.bjorn.helgaas@hp.com>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bjorn Helgaas <bjorn.helgaas@hp.com>
Cc: Alan Jenkins <alan-jenkins@tuffmail.co.uk>, linux-acpi@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Venkatesh Pallipadi <venkatesh.pallipadi@intel.com>

On Tue, 14 Apr 2009 08:59:01 -0600
Bjorn Helgaas <bjorn.helgaas@hp.com> wrote:

> I can't help with the real problem of why the asynchronous battery
> init causes the hang.

that got fixed already for the module case.

> 
> But I do object to the magic makefile ordering change in that commit.
> Nobody reading the makefile can tell why battery is down at the end,
> and moving it apparently slows down boot significantly. 

for all cases I've seen it actually speeds it up, because the battery
now runs concurrently with the disk probe.

> So the
> ordering change just feels like a band-aid that covers up a place
> where ACPI could be improved.

the reason for the move is that both the battery and other pieces take
the big acpi lock; which defeats the parallelism. So the battery needs
to happen at the end instead.

-- 
Arjan van de Ven 	Intel Open Source Technology Centre
For development, discussion and tips for power savings, 
visit http://www.lesswatts.org
