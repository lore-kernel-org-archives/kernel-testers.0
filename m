From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #13232] ext3/4 with synchronous writes gets wedged by
	Postfix
Date: Tue, 19 May 2009 13:53:12 -0400
Message-ID: <20090519175312.GC9053@mit.edu>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.yJG.DA0DKB@chimera> <20090518132517.GL32019@mit.edu> <20090519171713.GA3354@dbwatson.ukfsn.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090519171713.GA3354-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>, Al Viro <viro-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, May 19, 2009 at 06:17:13PM +0100, David Watson wrote:
> On Mon 18 May 2009, Theodore Tso wrote:
> > On Sat, May 16, 2009 at 10:06:04PM +0200, Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13232
> > > Subject		: ext3/4 with synchronous writes gets wedged by Postfix
> > > Submitter	: David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>
> > > Date		: 2009-05-03 19:46 (14 days old)
> > 
> > This turned out to be caused by change in the VFS, as documented in
> > the bug report.  Al Viro has a patch, which I've reviewed.
> > 
> > David, would you be able to try testing Al's proposed patch, since you
> > have an easy reproduction case?  Thanks,
> 
> Yes, it fixes the problem for me on 2.6.30-rc6-git3 and 2.6.29.4-rc1.

Thanks, David.

Al, Jan Kara and I have reviewed your patch, and we can add a
Tested-by: from David Watson (assuming David, you don't mind your name
or e-mail address showing up in the Kernel commit logs --- if you want
us to suppress one or both, please let us know).  Given this is a
2.6.28 regression, and this can certainly affect real-life users, I
think we should push your patch to Linus for 2.6.30.  Do you agree?

Regards,

						- Ted
