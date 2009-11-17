From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 16 Nov 2009 16:53:18 -0800
Message-ID: <4B01F3FE.8040707@gmail.com>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera> <OWmO9uyC1hM.A.yiC._ndALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=MiIl2LnbzEmXVAaTKu8IF2HGCDpMzCltt7ViV8FtCRI=;
        b=GYj4cYGxLyFHIkMQuBKgM/qWaxSs35TEjnP8FXOiKpqT9ygpyuUjmqZurAH1qNpaLJ
         74OrglXwdCpzg7g8wkynKQiy5wzXatt8nHS93I+Ap1HKEhKsTbFhpuAIjmQqcqQgfh29
         XPUdQwHX1LxG1HQgVif2atwz14kXjaruKek4g=
In-Reply-To: <OWmO9uyC1hM.A.yiC._ndALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14267
> Subject		: Disassociating atheros wlan
> Submitter	: Kristoffer Ericson<kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-09-24 10:16 (54 days old)
> References	: http://marc.info/?l=linux-kernel&m=125378723723384&w=4
>
>
>
>    
I'm not sure(I've been procrastinating on this one
with reverting commits to see if it helps
the guy that reported this).

 From over here though there never was a problem
on my side with the wireless connection(maybe a few disconnects,
but nothing too harsh).

At this point the best thing to do is to see what the
response is from the two gentlemen who where really
hitting this and seem to be running into issues
then go from there.

Justin P. Mattock

