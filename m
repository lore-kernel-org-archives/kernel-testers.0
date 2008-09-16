From: "Jaswinder Singh" <jaswinderlinux@gmail.com>
Subject: Re: [Bug #11272] BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI 9835
Date: Tue, 16 Sep 2008 20:55:22 +0530
Message-ID: <3f9a31f40809160825s4bd0f950td2b29107113e79e0@mail.gmail.com>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.17.FfsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-serial-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=VmbBQiQwlffCtFFDjycufEZPqV6DWFuXryaBfh0HpJU=;
        b=wH2JPLAyI7SZkgEO6A0tGkBE053BrlL50iDY/Nt4uhqN0QL9Eevuo1mRXq/EdM3r2h
         O5xOwTgw2XcIR4KdQhTbUJK5rGWopeUpk+Iy2mJjVwAapO3kAov33U1aMLScDAiDhIl7
         JTJ7NiShVgSXdInnGL2HxhNa8YB/0l+lGjbmY=
In-Reply-To: <SpS7rta8n4.A.17.FfsyIB@albercik>
Content-Disposition: inline
Sender: linux-serial-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, linux-serial@vger.kernel.org

Hello all,

I am sorry for delay.

On Sat, Sep 13, 2008 at 12:36 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11272
> Subject         : BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI 9835
> Submitter       : Jaswinder Singh <jaswinderlinux@gmail.com>
> Date            : 2008-08-05 15:12 (39 days old)
> References      : http://marc.info/?l=linux-kernel&m=121794900319776&w=4
>

I have tested parport_pc and also tried with pcmcia_cs, only thing I
get is disappointment. So I give up :-(

Now I switched to usbserial.
usbserial drivers are working great !!

Now I do not want to use parport_pc and pcmcia_cs atleast for 2 years,
I hope in 2 years this will be solved ;)

In the mean time, If you think my problem is solved just ping to me I
will test and let you know the results.

Thank you for all your support and help.

Jaswinder Singh.
