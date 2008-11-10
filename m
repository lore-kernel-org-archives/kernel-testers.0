From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Mon, 10 Nov 2008 19:18:16 +0300
Message-ID: <20081110161816.GC16522@localhost>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera> <4B0Eqx89uNG.A.ZND.0a1FJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=tOvroCE5ptJYJeJPqi4agwfo845Vrvecpkd6LFp19KA=;
        b=WyxpUCjCGb8Ghuah0kgLpSjEQlO9mjAZ2rYC8mTNQHDXQBlDKmHmw/Q0viwvFz934s
         38VHrKciwts2H3zDqGr9cjbT3H3tco3xuI+sRAeo0xlwAzYajex4FYBZNIq4UsI+vaoL
         nGwjDS1iZJbvvwHrDisYWIG3EJlzEazul+Bs0=
Content-Disposition: inline
In-Reply-To: <4B0Eqx89uNG.A.ZND.0a1FJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

[Rafael J. Wysocki - Sun, Nov 09, 2008 at 08:43:19PM +0100]
| This message has been generated automatically as a part of a report
| of regressions introduced between 2.6.26 and 2.6.27.
| 
| The following bug entry is on the current list of known regressions
| introduced between 2.6.26 and 2.6.27.  Please verify if it still should
| be listed and let me know (either way).
| 
| 
| Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11543
| Subject		: kernel panic: softlockup in tick_periodic() ???
| Submitter	: Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
| Date		: 2008-09-11 16:46 (60 days old)
| References	: http://marc.info/?l=linux-kernel&m=122117786124326&w=4
| Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 		  Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
| 		  Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
| 
| 

Waiting for info from Joshua

		- Cyrill -
