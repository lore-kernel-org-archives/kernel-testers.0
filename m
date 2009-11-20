From: tytso-3s7WtUTddSA@public.gmane.org
Subject: Re: [Bug #14619] ext3/jbd oops in journal_start
Date: Fri, 20 Nov 2009 10:32:29 -0500
Message-ID: <20091120153229.GC4921@thunk.org>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
 <xXQGFmujPl.A.wQG.8SdALB@chimera>
 <20091120150648.GB4921@thunk.org>
 <20091120151822.GV3110@think>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091120151822.GV3110@think>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Nov 20, 2009 at 10:18:22AM -0500, Chris Mason wrote:
> > Sage, any updates on this?  What was the last kernel version where you
> > weren't having this problem?  Sounds like you can't mount any ext3
> > file systems at all?
> 
> This is a btrfs bug and is fixed.  I've updated the bugzilla.

Thanks!  I remember seeing that but I didn't connect it to this
bugzilla entry.

Just trying to do my part to clear out open regressions after Linus
sent out his pre-thanksgiving grump.  :-)

						- Ted
