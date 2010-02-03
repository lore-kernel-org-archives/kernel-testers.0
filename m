From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking
	dependency detected
Date: Tue, 2 Feb 2010 18:18:35 -0800
Message-ID: <20100203021835.GA9812@kroah.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <d3IDKWHT5gE.A.DLD.q8hZLB@chimera> <9ea470501002011001s7734a20ft4dd5d181baf714c3@mail.gmail.com> <201002022146.45078.rjw@sisk.pl> <20100202205857.GA30024@liondog.tnic>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100202205857.GA30024-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TZUIDd8j+nm9g@public.gmane.org>

On Tue, Feb 02, 2010 at 09:58:57PM +0100, Borislav Petkov wrote:
> (Adding Greg to Cc:)
> 
> On Tue, Feb 02, 2010 at 09:46:45PM +0100, Rafael J. Wysocki wrote:
> > On Monday 01 February 2010, Borislav Petkov wrote:
> > > On Mon, Feb 1, 2010 at 1:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > >
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.32.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > >
> > > >
> > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14949
> > > > Subject         : drm_vm.c:drm_mmap: possible circular locking dependency detected
> > > > Submitter       : Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > > > Date            : 2009-12-26 9:45 (37 days old)
> > > > References      : http://marc.info/?l=linux-kernel&m=126182073616279&w=4
> > > > Handled-By      : Eric W. Biederman <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>
> > > > Patch           : http://patchwork.kernel.org/patch/70461/
> > > 
> > > Yes, this is fixed.
> > 
> > Do you mean "fixed" as "the fix is in the Linus' tree" or "fixed" as "the
> > patch fixed it for me"?
> 
> Rather the second one, i.e. it fixes it for me. The patch is named
> 
> sysfs-cache-the-last-sysfs_dirent-to-improve-readdir-scalability-v2.patch
> 
> and is "stuck" in Greg's tree. Judging by the quilt series??, the patch
> is slated for submission after 2.6.33. This late in the game for .32,
> I'm guessing maybe a stable backport after .33 is out?
> 
> [1] http://www.kernel.org/pub/linux/kernel/people/gregkh/gregkh-2.6/patches/series

I'll mark it for stable, I'd prefer to wait for .33 to come out before
sending it in.

thanks,

greg k-h
