From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [stable] [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from
	ondemand and conservative governors
Date: Tue, 30 Jun 2009 16:39:12 -0700
Message-ID: <20090630233912.GA3709@kroah.com>
References: <20090623193215.GA31374@elte.hu> <1245938485-12663-2-git-send-email-trenn@suse.de> <20090630225813.GB2634@kroah.com> <20090630231452.GA23217@Krystal>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090630231452.GA23217@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Jun 30, 2009 at 07:14:52PM -0400, Mathieu Desnoyers wrote:
> * Greg KH (greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org) wrote:
> > I don't see the patch below in Linus's tree.  If it's there, what is the
> > git commit id?
> > 
> 
> As I pointed out in an earlier reply, this patch is bogus and adds racy
> data structure updates. It should not be merged.

Ok, dropped.

thanks,

greg k-h
