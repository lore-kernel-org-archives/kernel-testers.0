From: Shawn Starr <shawn.starr@rogers.com>
Subject: Re: [Bug #16311] [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo W500 laptop
Date: Fri, 9 Jul 2010 15:29:36 -0700 (PDT)
Message-ID: <170016.53786.qm@web88004.mail.re2.yahoo.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <TXb9XdQzJoD.A.YHB.IMmNMB@chimera> <201007082300.51672.shawn.starr@rogers.com> <201007092301.25839.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1278714576; bh=giwMV6CHx4Ul/Cpsl35JMmFzDlzE0mI8iuJh542mXpM=; h=Message-ID:X-YMail-OSG:Received:X-Mailer:References:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type; b=LOIHybreLh790Un6BOf7jE0hDwATH1tofTjzrsFMPX3n6JGCwef9vgxfkUru+gU0dqxLCt+BqdDY4N/0bskWvUQ8s24a7rng+PXJ9NCTb0N9ZFX1QowhiVQDiW1HKXMtixPHN1Y3317BgVYPjqaKsAPmSVft566IGRarh1rmR3o=
In-Reply-To: <201007092301.25839.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

----- Original Message ----

From: Rafael J. Wysocki <rjw@sisk.pl>
To: Shawn Starr <shawn.starr@rogers.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>; Kernel Testers 
List <kernel-testers@vger.kernel.org>; Maciej Rutecki <maciej.rutecki@gmail.com>
Sent: Fri, July 9, 2010 5:01:25 PM
Subject: Re: [Bug #16311] [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo 
W500 laptop

On Friday, July 09, 2010, Shawn Starr wrote:
> On Thursday, July 08, 2010 07:41:40 pm Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.34.  Please verify if it still should be listed and let the
> > tracking team know (either way).
> > 
> > 
> > Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=16311
> > Subject        : [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo W500
> > laptop Submitter    : Shawn Starr <shawn.starr@rogers.com>
> > Date        : 2010-06-28 0:45 (11 days old)
> > Message-ID    : <201006272045.17004.shawn.starr@rogers.com>
> > References    : http://marc.info/?l=linux-kernel&m=127768633705286&w=2
> 
> Continues with July 7th, snapshot of 2.6.35-rc4. 
> 
> Some more info: I have USB in use while trying to suspend.  A USB Microsoft 
> Mouse and a QuickCam Pro 9000 camera connected.
>>Well, can you please try to suspend without the USB devices and see if the bug
>>is still reproducible, then?
>>
>>Rafael

Yes, will try that today.

Thanks, 
Shawn
