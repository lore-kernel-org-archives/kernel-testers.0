From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15031] bug in fs/btrfs/ordered-data.c:672
Date: Mon, 11 Jan 2010 01:38:39 +0100
Message-ID: <20100111003839.GA6216@Pilar>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
 <omZ8aBZReyD.A.0sG.6MlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=ooqDepTRJXiu8hojVtUibqZRluGZlAGosuAURloDG4k=;
        b=a3ee0d7SMgdcXdptFqhU71zzVsAM1hOArNJFAQwm83u4KPD3nSemDgAm9OhW9JSXmS
         x8oQGjY+P05g46RwPRPIut1TtM524ppWQ5ThtuGbE5FxIXu1yd59uOHOqHzTs8zj/4uE
         llKpzJUpyR3E4ENCLPqjyuMdeWCyo39PhstJE=
Content-Disposition: inline
In-Reply-To: <omZ8aBZReyD.A.0sG.6MlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Yan, Zheng" <yanzheng-0GSiYjBpcig@public.gmane.org>

On So 10.Jan'10 at 23:32:57 +0100, Rafael J. Wysocki wrote:
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15031
> Subject		: bug in fs/btrfs/ordered-data.c:672
> Submitter	: Carlos R. Mafra <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-02 11:32 (9 days old)
> References	: http://lkml.org/lkml/2010/1/2/17
> Handled-By	: Yan, Zheng <yanzheng-0GSiYjBpcig@public.gmane.org>
> Patch		: http://www.mail-archive.com/linux-btrfs-u79uwXL29TY76Z2rM5mHXA@public.gmane.org/msg03686.html

I am using the patch above since Zheng pointed it out to me and the bug
no longer appears. But it is not in mainline yet.
