From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11854] v2.6.28-rc1: readlink /proc/*/exe returns uninitialized data to userspace
Date: Sun, 2 Nov 2008 22:09:24 +0100
Message-ID: <19f34abd0811021309u341b0512x2220720176011e78@mail.gmail.com>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
	 <wOAXuecskPD.A.dhG.lkeDJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=9BQYX6biC0laKjzc0eumOCvaLiurFKNPUj2yhfheTlw=;
        b=kglyuzXxt2VWU0UhP3cVqg+JsdDPSOoUvm2rB7/I6z/vnvR5lbwQysKUfZjC6XWMvx
         jjnBOWv7oSing2Va6icyZooh69Kh7ecDvqkOFTcjcQ86lsTW2M4zfQjKhwtR0nz1eyQG
         r0D7zpn+yptAIQyyGrgvOrcn1ZpGaBeNRb6zQ=
In-Reply-To: <wOAXuecskPD.A.dhG.lkeDJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Nov 2, 2008 at 5:07 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11854
> Subject         : v2.6.28-rc1: readlink /proc/*/exe returns uninitialized data to userspace
> Submitter       : Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-10-25 17:14 (9 days old)
> References      : http://marc.info/?l=linux-kernel&m=122495490201663&w=4

Been trying to reproduce this one since I saw it, and I think it can
be written off as can't reproduce :-(

Maybe I can contribute a patch that verifies that the return value ==
strlen(buffer), WARN_ON otherwise? And hope that somebody runs into
it.


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
