From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15273] Regression in ptrace (Wine) starting with
	2.6.33-rc1
Date: Wed, 17 Feb 2010 17:15:47 +0100
Message-ID: <20100217161543.GB5041@nowhere>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera> <4un6Gst5rKB.A.j0G.oiIeLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=PlF8NNmz12hUxHdgMobptpLFX6FZncFmBjm1+TX1f/o=;
        b=ZOJhKcc78Hz1obcZYpsgY9EXhTEKJ2bFb6NaJjUGs6h07QyWiAZlKdsvGUyISD033O
         JwIZ/Kd9+qzoEXJwm0HHEv05Ev/caRg/N37kHYL0hfy6TUJIu3TKKIphmyhPhhki7Eju
         kwgNI2676n9uPypL6xeHZO5dTHtDgD92K33bw=
Content-Disposition: inline
In-Reply-To: <4un6Gst5rKB.A.j0G.oiIeLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "K.Prasad" <prasad-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Maneesh Soni <maneesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Mon, Feb 15, 2010 at 12:38:35AM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15273
> Subject		: Regression in ptrace (Wine) starting with 2.6.33-rc1
> Submitter	: Michael Stefaniuc <mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2010-02-11 16:21 (4 days old)


We are taking care of it. It's actually two regressions.
One has a fix that seems to work, and I'm working on the other one,
trying to get that upstream before 2.6.33 gets released.

Please keep the ticket open for now.

Thanks.
