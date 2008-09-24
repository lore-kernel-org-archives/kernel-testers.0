From: Theodore Tso <tytso@mit.edu>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 16:47:15 -0400
Message-ID: <20080924204715.GL9929@mit.edu>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz> <20080923.211215.193696086.davem@davemloft.net> <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com> <20080924.003638.71148740.davem@davemloft.net> <20080924102730.31ee305a@bike.lwn.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755337AbYIXUry@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20080924102730.31ee305a@bike.lwn.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jonathan Corbet <corbet@lwn.net>
Cc: David Miller <davem@davemloft.net>, airlied@gmail.com, jkosina@suse.cz, jeffrey.t.kirsher@intel.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com

On Wed, Sep 24, 2008 at 10:27:30AM -0600, Jonathan Corbet wrote:
> On Wed, 24 Sep 2008 00:36:38 -0700 (PDT)
> David Miller <davem@davemloft.net> wrote:
> 
> > I'm about to leave for a week or so in Paris for the netfilter
> > workshop, so I hope that someone other than myself will do some data
> > mining like I have instead of (merely) tossing theories around and
> > finger pointing.
> 
> A data point, just in case it helps...  I've not had time to update my
> desktop system, so this all-Intel, ICH9, e1000e-based box has been stuck
> at 2.6.27-rc3.  It has rawhide as of shortly after the floodgates
> reopened (but with my own kernel); that means X server 1.5.0 and i810
> 2.4.2-3.

I'm running a 2.6.26-rc6 kernel on a X61s laptop, which is an
all-Intel ICH8, using the e1000e driver, and I haven't been been
bitten with the problem either.  I'm using an Ubuntu Hardy userspace,
which means I'm using an 1.4.0.90 X Server with an i915 drm version
1.6.0 20060119, and my e1000 EEPROM hasn't been blasted to oblivion
yet!

Personally, I don't plan on upgrading to a newer userspace until we
figure out what the heck is going on.  :-)

					- Ted
