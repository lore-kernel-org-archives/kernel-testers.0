From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13015] pppoe over ethernet
Date: Tue, 7 Apr 2009 12:41:49 +0400
Message-ID: <aa79d98a0904070141r45d752dana00cebb381b72c4c@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.gjH.4Fn2JB@chimera>
	 <aa79d98a0904062031x321bd160rd89b19a6a49fe760@mail.gmail.com>
	 <alpine.LNX.2.00.0904071020380.7197@speedy.coe.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=fkfu6Ew4U6RCNK2rqSmnV81Zqu41vFHsbx57Gkj+rnU=;
        b=eQYRYumiiQSzHpoqkOddJK5792ci6HHK0mpMCmqqaRSvrl35r/yEvOdAK7Df0u911B
         p47J1sKTQE8Gqj+iWNnfK7OJX1BUM++Um9BDzSI+WVtVhoVokQLKiE7K1zOOKV7yU8uR
         vW1fhe0/OYimVRwvjL1yK1lVU90IaJH/G6bI8=
In-Reply-To: <alpine.LNX.2.00.0904071020380.7197-PUsz0/4jNWon//yrT8JD5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Detlef Tschirschky <detlef.tschirschky-Mmb7MZpHnFY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 4/7/09, Detlef Tschirschky <detlef.tschirschky-Mmb7MZpHnFY@public.gmane.org> wrote:
> On Tue, 7 Apr 2009, Cyrill Gorcunov wrote:
>
>> On 4/6/09, Rafael J. Wysocki wrote:
>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13015
>>> Subject	: pppoe over ethernet
>
>> I expect the issue is inspered by network problem found in plain
>> 2.6.29. Detlef could you confirm the problem is still active in
>> 2.6.29.1 or in current -git mainline?
>
> Moin Cyrill,
>
> 2.6.29.1 is running fine for me. Can't find any network problems in
> 2.6.29.1 now.
>
> Thanks and regards
>
> Detlef
>
>
Thanks a lot, Detlef!
Rafael, i guess we could close the bug.
