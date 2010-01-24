From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5
 cr2 0
Date: Sun, 24 Jan 2010 15:02:23 -0800
Message-ID: <4B5CD17F.6070606@gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.wCC.jbMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=RieB4Pf/s0tST3JYlV7sWs50mccxWwlHdHvlBs0hU3c=;
        b=M8QK3tVX0LSQNbqnidXBP8+TSBLTMmf2Q6Eg/Ptgnx3wWdQXrV6h84l2A3leG7YFik
         U82s2ZpoW0GOfUOHE8DDeTX18lItertrseT1xlsug9kK1P+FkiWiHVuKO/G2bUsPYyNl
         z3QdNHLoaudVFgmd9XdgtCdE9EgbJQXWVscOk=
In-Reply-To: <q60Z28d_9yH.A.wCC.jbMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 01/24/10 14:22, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
> Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-23 16:45 (94 days old)
> References	: http://lkml.org/lkml/2009/10/23/252
>
>
>

yeah I'm still seeing this during boot.
As of looking at this, been tied up with another
issue and totally forgot. next week I'll be away
for a week, and during that period I can try and look at this
since I might be hanging around at times.
(and wont be side tracked with the other issue I was looking at);

So yeah please keep it open, and hopefully somebody
see's what is happening and maybe has a solution, or
by chance maybe I can figure something.

Justin P. Mattock
