From: "Caleb Cushing" <xenoterracide-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12264] i915: switching from kwin in opengl mode to a VT then back to x11, x11 freezes
Date: Sun, 11 Jan 2009 19:42:51 -0500
Message-ID: <81bfc67a0901111642i37f46edar8592899d7193b863@mail.gmail.com>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera>
	 <nHCfeC0YLrE.A.ncC.2afaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=j44LU0tcxZRagO9D/CB1SjnqfYwTca8KlSTw8scMjGQ=;
        b=ICADrsnrjbKTq44Vgtg6VKEMtQXSs+H6UHEGe2EGAAu2OH4QSwauxkcGfuOvWJreAa
         K9dLPR78SpshmStzeXj0DtmAf/toZx7zY/2Ygx+lFSoFmPbsC3vAq4dhjtDS3VdRclsg
         oYBwSjcj8Ue+3yI0Vj62ASbtQMci22DmVLnHA=
In-Reply-To: <nHCfeC0YLrE.A.ncC.2afaJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

so far I'm tracking with gentoo here.
http://bugs.gentoo.org/show_bug.cgi?id=253813 and freedesktop here
http://bugs.freedesktop.org/process_bug.cgi

and I've tested the first 2 kernel patches alone, and still have the
issue, haven't been able to add the libdrm patch to libdrm so far.

On 1/11/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
>  of regressions introduced between 2.6.27 and 2.6.28.
>
>  The following bug entry is on the current list of known regressions
>  introduced between 2.6.27 and 2.6.28.  Please verify if it still should
>  be listed and let me know (either way).
>
>
>  Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12264
>  Subject         : i915: switching from kwin in opengl mode to a VT then back to x11, x11 freezes
>  Submitter       : Caleb Cushing <xenoterracide-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>  Date            : 2008-12-16 11:40 (27 days old)
>  References      : http://marc.info/?l=linux-kernel&m=122942777030666&w=4
>
>
>


-- 
Caleb Cushing

http://xenoterracide.blogspot.com
