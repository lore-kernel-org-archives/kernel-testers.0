From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 09:08:36 -0700
Message-ID: <200809250908.37676.jbarnes@virtuousgeek.org>
References: <20080923.150722.141587696.davem@davemloft.net> <200809241726.58628.jbarnes@virtuousgeek.org> <alpine.LNX.1.10.0809250230000.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753664AbYIYQJ2@vger.kernel.org>
In-Reply-To: <alpine.LNX.1.10.0809250230000.4671@pegasus.suse.cz>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina@suse.cz>
Cc: David Miller <davem@davemloft.net>, jeffrey.t.kirsher@intel.com, airlied@gmail.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com, Ingo Molnar <mingo@elte.hu>, jesse.brandeburg@intel.com, Karsten Keil <kkeil@suse.de>

On Wednesday, September 24, 2008 5:33 pm Jiri Kosina wrote:
> On Wed, 24 Sep 2008, Jesse Barnes wrote:
> > That said, adding a check to the x86 code would be a good thing to do;
> > I'll hack up a patch tomorrow unless someone beats me to it.
>
> The problem here is that what we desperately need first is a method to
> restore the original EEPROM contents after it gets corrupted (David Airlie
> has, sadly, apparently bricked his notebook while trying to do so).
> Without this, we can put a lot of debugging/protecting patches into the
> kernel, but we won't be able to succesfully verify anything, because
> testing wouldn't be possible.
>
> Added Jesse and Karsten to CC, as they are working on such a tool right
> now, as far as I know.

I should be able to test the mmap fix independently of the e1000 breakage at 
least... lemme try it out now...

-- 
Jesse Barnes, Intel Open Source Technology Center
