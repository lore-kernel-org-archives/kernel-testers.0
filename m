From: Robert Hancock <hancockrwd@gmail.com>
Subject: Re: [Bug #14922] 2.6.32 seemed to have broken nVidia MCP7A sata 
	controller
Date: Sun, 24 Jan 2010 20:25:06 -0600
Message-ID: <51f3faa71001241825yec6e37br8032b7a3730ce840@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A.aX.kZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752838Ab0AYCZM@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=JgQorc3du+E1ImEViowFx+LqVKJ1RInD9xFz9EfBc9c=;
        b=EYCPHyNdi8JNdUCgKuwvMQglnxzKSWjIz0gQvnidI6mayaG5MEJV3d/pU9kszE4O+S
         AIRh9PhYOmrq+h/tgd2mG8axTS4Lmg2BeLXd5OfhTZAIIQNOw65TUK1tfGe8vdFZ+6Km
         fGqfv0lz8STv1hLHg/MCt8qym641JRsZuN03A=
In-Reply-To: <q60Z28d_9yH.A.aX.kZMXLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jeff Garzik <jeff@garzik.org>, Mike Cui <cuicui@gmail.com>

On Sun, Jan 24, 2010 at 4:23 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14922
> Subject =A0 =A0 =A0 =A0 : 2.6.32 seemed to have broken nVidia MCP7A s=
ata controller
> Submitter =A0 =A0 =A0 : Mike Cui <cuicui@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-19 6:13 (37 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-ide&m=3D126120323=
407742&w=3D4
> Handled-By =A0 =A0 =A0: Jeff Garzik <jeff@garzik.org>
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Robert Hancock <hancockrwd@gmail.c=
om>

It's a confirmed regression. Waiting on some lspci -nn output from the
reporter. However, for now, disabling auto-activate optimization on
all NVIDIA AHCIs may be the easiest option.
