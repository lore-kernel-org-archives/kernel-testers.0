From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5
 cr2 0
Date: Sun, 22 Nov 2009 06:59:23 -0800
Message-ID: <4B0951CB.20607@gmail.com>
References: <pohDdrcORVG.A.U2B.-6_BLB@chimera> <l2_yP_tdgYK.A.32C.e7_BLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=IlBfmwanF4iygyvnAMyY975Xu5uGzNVrYAo7T1360bI=;
        b=rGtx5QbCyWm10B2W3KFocxnWgArwwZPYumkzItMxrys2rYzkXIepXa+fONS18syzvG
         8zHR2P3pEB6jp113C6DaX1VR2QIBlmwyrYscnoXVtLCBjXKejNR/0EpCy3l+Js5ALt1d
         riQRVx/q3DHNFPn9bSZSD5fxBNblWnHY92cZM=
In-Reply-To: <l2_yP_tdgYK.A.32C.e7_BLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
> Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-23 16:45 (30 days old)
> References	: http://lkml.org/lkml/2009/10/23/252
>
>
>
>    
yes It's still there.. I'm wondering because
there's not much feedback on this maybe I should take
a hint! or maybe it's something people just don't
understand, and don't have time for.. In any case
I'm still looking at it(although had to look at other
reports as well).

Justin P. Mattock
