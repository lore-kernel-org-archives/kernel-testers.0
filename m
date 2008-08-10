From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11277] BUG kmalloc-64: Object already free
Date: Sat, 9 Aug 2008 17:25:44 -0700
Message-ID: <dd18b0c30808091725s5974befdp4b57fe54d3d6e255@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.TX.0CjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=wgp/YhtZk6caH9P0Q4Kt6YsuHgfHDzwa22sZ77syfFc=;
        b=cVcIb4C1LK/kRsOPeiDcXgSeoBEfRI3Ar3MnpD4mpAxD6aqtZyWgrzncN9Xk8sSiNd
         0Ma7KzZpWIxo4ophlkDp/7+uEOmFFx7QIJzJhnH0neB/whTJes9fMeRHdsigjSnRbqms
         VLVa6RVJPlfhjVVfSjwfZz9yLajDXpLQM0FNk=
In-Reply-To: <cX_-nNkxKaF.A.TX.0CjnIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sat, Aug 9, 2008 at 3:43 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11277
> Subject         : BUG kmalloc-64: Object already free
> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-08-06 21:21 (4 days old)
> References      : http://marc.info/?l=linux-kernel&m=121805862910241&w=4
> Handled-By      : Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch           : http://marc.info/?l=linux-kernel&m=121814402609514&w=4
>
>
>

I think this bug report can be closed.


-- 
Justin P. Mattock
