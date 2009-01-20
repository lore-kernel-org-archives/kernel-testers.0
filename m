From: Caleb Cushing <xenoterracide-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12264] i915: switching from kwin in opengl mode to a VT 
	then back to x11, x11 freezes
Date: Tue, 20 Jan 2009 13:13:40 -0500
Message-ID: <81bfc67a0901201013p46967ecfgb69353df51fc50d8@mail.gmail.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.SID.GKRdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=hq4ZuiqS8fLzuOsghlLT2Y5LOaKUcHNRC2BNLyvAgt8=;
        b=dBfqnqZDxT2nvqdQ3ASatQWrdZHbi196i74K5Tmfx4RO+K6sAc+/HGTB/xgjawp7yE
         lMOjp80m1rvZUgPNrlosB7jo87QUI2i/hY9HR5oNkyBqld3177OM9rCbFucwJHaPl5v8
         LlY3kPzZo/8yk13Gscs4y14mkfkyZZrORw9B4=
In-Reply-To: <cX2gZ6Cy9nC.A.SID.GKRdJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

http://bugs.freedesktop.org/show_bug.cgi?id=18879

fixed here and verified fixed in gentoo. Not sure if the kernel
patches have made it into vanilla-sources. If they have +libdrm fix,
it works.

On 1/19/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
>  Date            : 2008-12-16 11:40 (35 days old)
>  References      : http://marc.info/?l=linux-kernel&m=122942777030666&w=4
>
>
>


-- 
Caleb Cushing

http://xenoterracide.blogspot.com
