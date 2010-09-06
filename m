From: Doug Nazar <nazard.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #17131] WARN with 3c905 boomerang NIC
Date: Mon, 06 Sep 2010 06:30:38 -0400
Message-ID: <4C84C2CE.4080905@gmail.com>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>	<4AUWBNzTkbD.A.V3H.2FueMB@chimera> <20100906075007.5797f524@schatten.dmk.lab>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=WAf7VAmJUJPrt7SCOePynBIs8A0B2WXTynZm/HRIArs=;
        b=d4WMlZ2QsMch96B+X+fWgw47kE5MieNEHSr6t10kzLQ6I3VW/N2aquXYzsnayRCJ5e
         lCElWMqxXmZ3phJGgrMsJydFEtdM2O/LOefTP4z3CqMZMU6imENm5LMifNuq+EmvbpHi
         36qd0h7TNiZ7hlW/xCxZDkEIQnr7ZbzTbYRN0=
In-Reply-To: <20100906075007.5797f524-mGsOIKOveelVRbCss4o9kg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org

  On 2010-09-06 1:50 AM, Florian Mickler wrote:
>
> Paul provided a patch at
> https://bugzilla.kernel.org/attachment.cgi?id=28832 .
>
> Has he pinged you already about it? You are not subscribed to the bug
> and I didn't see anything on the netdev mailinglist or lkml.
>

Sorry, kinda ignored this one once David said it was being worked on. 
I've been busy trying to track down why my wireless isn't working.

For the record, neither Paul's patch (095d05: softirq: adjust error 
check) or Ben's (24cd80: 
3c59x: Remove incorrect locking; correct documented lock hierarchy) 
which is sitting in the net-2.6 fix the issue. Tested atop 2bfc96a 
(Linux 2.6.36-rc3)

It seems to be an init issue as it only happens once during boot and 
doesn't impact functionality.

Doug
