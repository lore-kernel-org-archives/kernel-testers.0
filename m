From: Jarek Poplawski <jarkao2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13647] fb/mmap lockdep report.
Date: Tue, 7 Jul 2009 07:57:58 +0200
Message-ID: <20090707055758.GA3071@ami.dom.local>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.usG.AApUKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=92Hm7YfKdkvphFazrEjR/9jhMORm0WE/psl0hOChMtM=;
        b=xoHN8vpI17yC63zkgeRTBHmZG5qe6lcXqVtHYyQj0E+WE7MfPKmtdYG7KU1DRZIQ2I
         LJNWpJkJLACwYRHvirror3oreneUzFC84gI+0RtxaaqOzuDiX5VlfDRb+zFVUKWXHl3d
         0cz3g5h08uitJctJAfi2qztVeFnV/ufg9dbi0=
Content-Disposition: inline
In-Reply-To: <bXZeuxPQAWE.A.usG.AApUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tue, Jul 07, 2009 at 02:00:51AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13647
> Subject		: fb/mmap lockdep report.
> Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-06-21 13:33 (16 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=513adb58685615b0b1d47a3f0d40f5352beff189
> References	: http://lkml.org/lkml/2009/6/21/90
> 		  http://lkml.org/lkml/2009/6/21/122

This lockdep report isn't triggered by 2.6.31-rc2 anymore.

Thanks,
Jarek P.
