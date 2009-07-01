From: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [stable] [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from ondemand and conservative governors
Date: Wed, 1 Jul 2009 11:07:38 +0200
Message-ID: <200907011107.40045.trenn@suse.de>
References: <20090623193215.GA31374@elte.hu> <20090630231452.GA23217@Krystal> <20090630233912.GA3709@kroah.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090630233912.GA3709-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wednesday 01 July 2009 01:39:12 Greg KH wrote:
> On Tue, Jun 30, 2009 at 07:14:52PM -0400, Mathieu Desnoyers wrote:
> > * Greg KH (greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org) wrote:
> > > I don't see the patch below in Linus's tree.  If it's there, what is the
> > > git commit id?
> > > 
> > 
> > As I pointed out in an earlier reply, this patch is bogus and adds racy
> > data structure updates. It should not be merged.
> 
> Ok, dropped.

Yes, sorry for not mentioning.

I looked at it again, but gave up after a while, I am not able
to provide a safe .30 fix for that, risk of making things worse
is too high...
My last thought was that the main culprit is that .governor() should
always be called with the rwsem held. I look at it further and try
to ease up things for future kernels, but can't spent that much
time on it currently.

   Thomas
