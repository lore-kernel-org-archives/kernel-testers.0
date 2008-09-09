From: Jens Axboe <jens.axboe@oracle.com>
Subject: Re: 2.6.27-rc5-mm1: rmmod ide-cd_mod: tried to init an initialized  object, something is seriously wrong.
Date: Tue, 9 Sep 2008 15:21:42 +0200
Message-ID: <20080909132142.GM20055@kernel.dk>
References: <200809051528.54213.rjw@sisk.pl> <200809091107.04629.m.kozlowski@tuxland.pl> <20080909102925.GE20055@kernel.dk> <200809091414.32570.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Return-path: <linux-ide-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200809091414.32570.m.kozlowski@tuxland.pl>
Sender: linux-ide-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mariusz Kozlowski <m.kozlowski@tuxland.pl>
Cc: FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>, rjw@sisk.pl, akpm@linux-foundation.org, bzolnier@gmail.com, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-ide@vger.kernel.org

On Tue, Sep 09 2008, Mariusz Kozlowski wrote:
> > > On the other hand on newer kernels (post 2.6.26 - these which did not blow up) right
> > > after boot I have to run rmmod ide-cd_mod exactly three times to have ide-cd_mod
> > > unloaded. If I modprobe and rmmod again it works as expected. Why is this?
> > > 
> > > laptop mako # modprobe ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > ERROR: Module ide_cd_mod does not exist in /proc/modules
> > > laptop mako # modprobe ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > laptop mako # rmmod ide-cd_mod
> > > ERROR: Module ide_cd_mod does not exist in /proc/modules
> > 
> > Can you try the below patch from Elias?
> 
> Sure. It applied fine to clean current mainline. It looks ok now. No oopses and no BUGs.
> But still after a fresh boot I see 
> 
> # modprobe ide-cd_mod
> # rmmod ide-cd_mod
> # rmmod ide-cd_mod
> # rmmod ide-cd_mod
> ERROR: Module ide_cd_mod does not exist in /proc/modules
> # modprobe ide-cd_mod
> # rmmod ide-cd_mod
> # rmmod ide-cd_mod
> ERROR: Module ide_cd_mod does not exist in /proc/modules
> 
> You need to rmmod ide-cd_mod twice to get it unloaded. After another
> modprobe/rmmod it works as expected.

Looks like something for Bart to look into.

-- 
Jens Axboe

