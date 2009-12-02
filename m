From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH] uswsusp: automatically free the in-memory image once s2disk has finished with it
Date: Thu, 3 Dec 2009 00:22:53 +0100
Message-ID: <200912030022.54027.rjw@sisk.pl>
References: <4B1575AC.6080904@tuffmail.co.uk> <20091202221524.GB20830@elf.ucw.cz> <20091202222516.GD26702@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091202222516.GD26702-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 02 December 2009, Mel Gorman wrote:
> On Wed, Dec 02, 2009 at 11:15:24PM +0100, Pavel Machek wrote:
> > On Wed 2009-12-02 22:07:18, Mel Gorman wrote:
> > > On Wed, Dec 02, 2009 at 10:11:07PM +0100, Pavel Machek wrote:
> > > > On Wed 2009-12-02 14:28:12, Alan Jenkins wrote:
> > > > > The original in-kernel suspend (swsusp) frees the in-memory hibernation
> > > > > image before powering off the machine.  s2disk doesn't, so there is
> > > > > _much_ less free memory when it tries to power off.
> > > > > 
> > > > > This is a gratuitous difference.  The userspace suspend interface
> > > > > /dev/snapshot only allows the hibernation image to be read once.
> > > > > Once the s2disk program has read the last page, we can free the entire
> > > > > image.
> > > > > 
> > > > > This avoids a hang after writing the hibernation image which was
> > > > > triggered by commit 5f8dcc21211a3d4e3a7a5ca366b469fb88117f61
> > > > > "page-allocator: split per-cpu list into one-list-per-migrate-type":
> > > > 
> > > > Yes, you work around page-allocator hang. But is it right thing to do?
> > > > 
> > > 
> > > What's wrong with it? The hang is likely because the allocator has no
> > > memory to work with. The patch in question makes small changes to the
> > > amount of available memory but it shouldn't matter on uni-core. Some
> > > structures are slightly larger but it's extremely borderline. I'm at a
> > > loss to explain actually why it makes a difference untill things were
> > > extremely borderline to begin with.
> > 
> > We reserve 4MB, for such purposes, and we already wrote image to disk
> > with such constrains, so memory should not be _too_ tight.
> > 
> > Can you try increasing PAGES_FOR_IO to 8MB or something like that?
> > 
> 
> What's wrong with just freeing the memory that is no longer required?

Nothing, and the Alan's patch is going to Linus.

Thanks,
Rafael
