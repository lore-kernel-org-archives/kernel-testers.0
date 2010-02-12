From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bugme-new] [Bug 15273] New: Regression in ptrace (Wine)
	starting with 2.6.33-rc1
Date: Fri, 12 Feb 2010 19:10:49 +0100
Message-ID: <20100212181043.GA5475@nowhere>
References: <bug-15273-10286@http.bugzilla.kernel.org/> <20100211222058.321448c0.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=yc0hfDkrw05NedTyjMEAhpA9dODcZPP5qwXyU6BTxhg=;
        b=Jg+qFwTdJqG0ro/9mjK6wqPbbkoxUnT46XS4N54yukNB2nlcDwO023gApjhbPGVSO8
         7h2UZOrpNXbXLFyCJB3VRL/u1tuv8xF52MHGHToc7MU7OrZ9Fcl3Pz6DTZ7NqWWerTe4
         UM2e+sl+6zRht/UlZF905QF53heaFl0l47BqI=
Content-Disposition: inline
In-Reply-To: <20100211222058.321448c0.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, Feb 11, 2010 at 10:20:58PM -0800, Andrew Morton wrote:
> 
> post-2.6.32 rerression.


I'm handling it in the thread entitled
"Regression in ptrace (Wine) starting with 2.6.33-rc1"

Thanks.


 
> On Thu, 11 Feb 2010 16:21:38 GMT bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org wrote:
> 
> > http://bugzilla.kernel.org/show_bug.cgi?id=15273
[...]
