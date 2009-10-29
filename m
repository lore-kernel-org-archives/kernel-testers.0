From: Shawn Starr <shawn.starr@rogers.com>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 29 Oct 2009 18:43:40 -0400
Message-ID: <200910291843.41253.shawn.starr@rogers.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <20091029222335.GJ18464@mit.edu> <cb0375e10910291534j485b9e55vc42c3ce94a30252c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756851AbZJ2WuY@vger.kernel.org>
In-Reply-To: <cb0375e10910291534j485b9e55vc42c3ce94a30252c@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Lutomirski <luto@mit.edu>
Cc: Theodore Tso <tytso@mit.edu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On October 29, 2009 06:34:45 pm Andrew Lutomirski wrote:
> On Thu, Oct 29, 2009 at 6:23 PM, Theodore Tso <tytso@mit.edu> wrote:
> > On Thu, Oct 29, 2009 at 03:57:32PM -0400, Andrew Lutomirski wrote:
> >> This but is *not* fixed.  I just triggered it a few minutes ago by
> >> abusing i915 and drm, which caused a panic.  This is slightly newer
> >> than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.
> >
> > Andrew, can you test to see if this patch helps?
> 
> I'm building a kernel with that patch now, and I'll keep running it
> for awhile.  I only seem to trigger this bug once a month or so, so
> I'll let you know if I see any more corruption.
> 
> Thanks,
> Andy
> 

You should be able to trigger this using the same method I did. To mistakenly 
cause modprobe to spawn unlimited processes ending up in a swap storm.

Thanks, 
Shawn.
