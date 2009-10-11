From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sun, 11 Oct 2009 16:11:38 -0700
Message-ID: <4AD2662A.5050709@gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.AQC.izl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=BCqhDSVoECkxVr743Iaq2BecnloKp6M+AVIkrJKePnE=;
        b=Vt/pgYgeQwV2h/lIyuAuRs6Bfl7Rwu0NWSf+2Vd/yvAM51tlyJ1mdQblxo7VGO/akj
         uLjYDqpGWlrHd9mjQ0ZkIqy/yByR55A2zhSkUvslUYkz/SLMK4+zmyYxRiX3yW5by1mG
         a2iH4BERc8EJr2ce/cCrymq5cC3RlRLDmfjCQ=
In-Reply-To: <L6tb-VyKHZK.A.AQC.izl0KB@chimera>
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
> Date		: 2009-09-24 10:16 (18 days old)
> References	: http://marc.info/?l=linux-kernel&m=125378723723384&w=4
>
>
>
>    
I attached my bisect log to the bug report, but did not individually test
some of the commits in the log to see if it finds the issue.
(I can try later on and see).

so for now I say yes keep it open.

Justin P. Mattock
