From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14899] reiserfs: inconsistent lock state
Date: Sun, 10 Jan 2010 23:49:15 +0100
Message-ID: <20100110224914.GB5039@nowhere>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.vd.qNlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=uUSifJ/q18iohjVodJXIpHFpnpjIpfD3V81vIdepudA=;
        b=qGv0mLEUnpEHcmpsuL2naXMI0zty9/tBG7eO7Czso/Bu/JUY6V1Luwjnlv6aNGsTg7
         Kmgk7ufya6F4FdisH1JTeZiMYEfXqbOTwd/+cCGn/FwOHXC9LNbPLj50Mv6R/Obq3KsL
         kLABwplOO/O/kC7nd/Qh3+jZgjxo9ANEeJ2sc=
Content-Disposition: inline
In-Reply-To: <omZ8aBZReyD.A.vd.qNlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jan 10, 2010 at 11:32:53PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14899
> Subject		: reiserfs: inconsistent lock state
> Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-12-11 22:06 (31 days old)
> References	: http://marc.info/?l=linux-kernel&m=126056920702515&w=4
> Handled-By	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/67256/
> 		  http://patchwork.kernel.org/patch/67257/



The fix have been pulled upstream. Would be nice to have Alexander
confirmation that it's really fixed though.
