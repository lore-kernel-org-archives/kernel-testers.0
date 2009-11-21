From: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sat, 21 Nov 2009 20:04:42 +0100
Message-ID: <20091121200442.61740f37.kristoffer.ericson@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	<mYW9sxtWd2G.A.EnF.gDACLB@chimera>
	<4B08258E.9050607@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=yDDtW/UW0eFsV/FmzhBSSX4tKD3/rdp8244R+YW+Cdo=;
        b=UeLF7S8ZYjtsc6sn4/KRQUMA8XOx2x3gSLkReg2eUK9e7R961TSQkuKD7ocXe5tEZ4
         JmkawbjoLme6HOGuRIDbKoc2hQE/xUNrZlXTPdHjVvV5OjStqktCeBXyzL6uZJcAwkiD
         gFGr1pg5Fx+bhnBMypKo/Y5iwTiySLzFNKnQg=
In-Reply-To: <4B08258E.9050607-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Sat, 21 Nov 2009 09:38:22 -0800
"Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14267
> > Subject		: Disassociating atheros wlan
> > Submitter	: Kristoffer Ericson<kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-09-24 10:16 (59 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125378723723384&w=4
> >
> >
> >
> >    
> I did a bisect yesterday on this, and the results
> seemed to have worked over here by reverting:
> 
> 75e6c3b72b3ab01c47629f3fbd0fed4e6550bf3a
> cfg80211: lower dynamic PS timeout to 100ms
> 
> if Kristoffer can try reverting this one
> to see, then we can go from there.

In the process of doing that as we speak.

> 
> Justin P. Mattock
> 
> 
> 


-- 
Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
