From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 5 Nov 2009 14:31:50 -0500
Message-ID: <20091105193150.GO6510@mit.edu>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.haF.Are5KB@chimera> <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com> <20091029222335.GJ18464@mit.edu> <cb0375e10911031543n5cfcc090k8780449a1413b067@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <cb0375e10911031543n5cfcc090k8780449a1413b067-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Lutomirski <luto-DPNOqEs/LNQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>

On Tue, Nov 03, 2009 at 06:43:11PM -0500, Andrew Lutomirski wrote:
> It looks like 2.6.32-rc6 is supposed to fix this bug, but it also
> looks like this patch didn't make it in.  Should I still be using this
> patch?

This patch does fix a potential problem and I am planning on pushing
it to Linus; the chances of hitting the race is quite low, though; the
revert which Eric identified is probably what was affecting most of
the people who were seeing problems with ext4 in 2.6.32-rcX.

    	       	    	   	    	      	 - Ted
