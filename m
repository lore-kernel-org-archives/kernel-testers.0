From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14899] reiserfs: inconsistent lock state
Date: Tue, 29 Dec 2009 17:29:03 +0100
Message-ID: <20091229162858.GA5258@nowhere>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.0O.fnhOLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=UaF3xRZfmSAlrCElo8nDHkYKXJlLoLFtOKxXytb/b8s=;
        b=pBsuFtrttiKPMnG56VE5IkydX7twPXUa2Ky1rbxbJafR4NF4mbOhGtJKK7qm4qphrO
         uEzqAxria0Qk+B1pciHnoElOiFR4z+/MfmcsVucgnlt6fpWsYVjAPrpZ9Wvp4SZ4yJCN
         YzAQkeFRJjSRVRRp26ZH12z2asAOIfC2MrxaY=
Content-Disposition: inline
In-Reply-To: <NJVdobuNFNK.A.0O.fnhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Dec 29, 2009 at 04:09:57PM +0100, Rafael J. Wysocki wrote:
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
> Date		: 2009-12-11 22:06 (19 days old)
> References	: http://marc.info/?l=linux-kernel&m=126056920702515&w=4
> Handled-By	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/67256/
> 		  http://patchwork.kernel.org/patch/67257/
> 
> 


I think this precise one is solved. The problem is that there are other
vmalloc in the same path that also need to be fixed.

I have a pending patch for that but as there are other reiserfs lockdep
reports to be solved, I'm trying to pack all fixes in a same
set so that they can be tested using a simple merge.

For now, I guess this ticket shouldn't be closed until reporters
can test the whole.

Thanks!

