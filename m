From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Sat, 21 Nov 2009 09:38:22 -0800
Message-ID: <4B08258E.9050607@gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera> <mYW9sxtWd2G.A.EnF.gDACLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=5UWcxNtkcYHM0jrtuCldQiZcELyrLWgLvnbTcGcY7VE=;
        b=RAJoSwnb0y56MiG1HXXK+x4taVS3BwpQBSKth1osQPFUtrh9FbmJfn0bjTIIzVYNLP
         rFct0KNAhH93F/tg2dKf0lypR6D8JZFg4vIrtNr47JMVQu1XMqiacKwwXU7JxqQarmSu
         U8plgsGqyfM670iJDt7utxqR88F0LqDrx2gD0=
In-Reply-To: <mYW9sxtWd2G.A.EnF.gDACLB@chimera>
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
> Date		: 2009-09-24 10:16 (59 days old)
> References	: http://marc.info/?l=linux-kernel&m=125378723723384&w=4
>
>
>
>    
I did a bisect yesterday on this, and the results
seemed to have worked over here by reverting:

75e6c3b72b3ab01c47629f3fbd0fed4e6550bf3a
cfg80211: lower dynamic PS timeout to 100ms

if Kristoffer can try reverting this one
to see, then we can go from there.

Justin P. Mattock


