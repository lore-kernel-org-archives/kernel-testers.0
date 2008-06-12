From: Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm3
Date: Thu, 12 Jun 2008 16:55:06 -0700
Message-ID: <1213314906.16459.90.camel@localhost.localdomain>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <alpine.DEB.1.00.0806130006490.14928@gamma>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.00.0806130006490.14928@gamma>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Byron Bradley <byron.bbradley-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Hua Zhong <hzhong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>


On Fri, 2008-06-13 at 00:32 +0100, Byron Bradley wrote:
> Looks like x86 and ARM both fail to boot if PROFILE_LIKELY, FTRACE and 
> DYNAMIC_FTRACE are selected. If any one of those three are disabled it 
> boots (or fails in some other way which I'm looking at now). The serial 
> console output from both machines when they fail to boot is below, let me 
> know if there is any other information I can provide.

Did you happen to check PROFILE_LIKELY and FTRACE alone?

Daniel

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
