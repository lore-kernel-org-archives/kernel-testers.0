From: Jindrich Makovicka <makovick@gmail.com>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Mon, 14 Jun 2010 14:27:08 +0200
Message-ID: <20100614142708.668d382e@holly>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
	<YPGdyfWGvNK.A.C8B.d9OFMB@chimera>
	<201006131722.44062.s.L-H@gmx.de>
	<alpine.DEB.2.01.1006131103590.3964@bogon.housecafe.de>
	<AANLkTily7ZDG16uE2vSsq8t3mssuATwtHnr8OajX8oga@mail.gmail.com>
	<20100614063948.GA3999@x200>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20100614063948.GA3999@x200>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org
Cc: kernel-testers@vger.kernel.org, linux-media@vger.kernel.org

On Mon, 14 Jun 2010 09:39:48 +0300
Alexey Dobriyan <adobriyan@gmail.com>
wrote:

> On Sun, Jun 13, 2010 at 01:57:40PM -0600, Grant Likely wrote:
> > On brief review, they look like completely different issues.  I
> > doubt the second patch will fix the flexcop-pci issue.
> 
> It will, see how name wht slashes propagated by request_irq()

Yes, the latter patch dodges the issue with flexcop driver by simply
skipping the directory creation, but both patches should be applied IMO.
The former to fix the flexcop driver because we can trivially fix it,
the latter to solve problems with any generic bogus firmware.

-- 
Jindrich Makovicka

