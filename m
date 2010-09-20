From: Bjorn Helgaas <bjorn.helgaas@hp.com>
Subject: Re: Testing request: Gigabyte GA-MA69VM-S2 690V regression
Date: Mon, 20 Sep 2010 13:39:04 -0600
Message-ID: <201009201339.05199.bjorn.helgaas@hp.com>
References: <201009171653.53848.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <201009171653.53848.bjorn.helgaas@hp.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org
Cc: kas@fi.muni.cz, marwooj@wp.pl, Simon Arlott <simon@fire.lp0.eu>, yahoocomar-noreply@yahoo.com.ar, jima@beer.tclug.org, vincent20165@yahoo.com, Marvin <marvin24@gmx.de>, andreas.in.hk@googlemail.com

[Added kernel-testers and others who have reported problems with this board]

On Friday, September 17, 2010 04:53:52 pm Bjorn Helgaas wrote:
> Simon Arlott reported that 2.6.35.4 hangs on his GA-MA69VM-S2 690V:
> 
>    http://lkml.org/lkml/2010/9/9/92
> 
> This is a regression, and I'd like to fix it as soon as possible.
> 
> I have a patch to fix this, but haven't been able to find someone
> who can reproduce the failure and test the patch.
> 
> If you have this motherboard, please consider testing a current
> upstream kernel on it.  If it fails, please try the test patch from
> 
>     https://bugzilla.kernel.org/show_bug.cgi?id=18482
> 
> and report your BIOS version and your results.  If it fails even
> with the test patch, please boot with "pci=nocrs" and attach the
> dmesg log to the bugzilla.
> 
> Thanks,
>   Bjorn
