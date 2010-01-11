From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5
 cr2 0
Date: Mon, 11 Jan 2010 05:56:50 -0800
Message-ID: <4B4B2E22.6030903@gmail.com>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera> <CXIfLt-ygXM.A.O1D.qilSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Z5Zb/gadn1Mo1n6Agc5HFdy0RQTG+qV54o7jUqkBlqw=;
        b=oMgzQKLMYuFJxEFHXbOoUtA0ZfjwYIAb8NHmNZJu/oq2NqHqB3fclgcSPmRcy4bsP3
         jaPVOdkqYBKOvu4OUIslfCrSl61DPTsA/KQJkUXUwveq1DGz555F0bTt7V1rFre+51R+
         66eioPsvvv/qcJGqr6+cujXtbLm4HCIy2RMbI=
In-Reply-To: <CXIfLt-ygXM.A.O1D.qilSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 01/10/10 14:56, Rafael J. Wysocki wrote:
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
> Date		: 2009-10-23 16:45 (80 days old)
> References	: http://lkml.org/lkml/2009/10/23/252
>
>
>

I've played around with this. and
and much confused at what needs to happen.
(please feedback on what might be happening);
In any case I can have another try at finding a fix
so please leave open.

Justin P. Mattock
