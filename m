From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #31702] ath5k phy2: failed to wakeup the MAC Chip
Date: Sat, 30 Apr 2011 15:38:07 -0700
Message-ID: <4DBC8F4F.5020009@gmail.com>
References: <QbBtx5c9v1J.A.JaF.PxGvNB@chimera> <9nxEC7x0HFO.A.5HG.FyGvNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=cfyo3PBtkfXJPA2rfuqfiwHOjnMK2NSORddNEn/2gvE=;
        b=j+eflXYnhOrO2afZXiS8LKKBBgfBwXXTYneX5skQeorlmY7mbshhorIHuCF639fCrd
         5X8WzVSGxdm17QQw7aMbnYl5UJqr0EDIGXYChVJt6fu7/Zdq5iOyI17mS4EEFzJYnufm
         0pSHk2w17UKBZwnc9ZJYU4b3CgP6Rlg0oxDSI=
In-Reply-To: <9nxEC7x0HFO.A.5HG.FyGvNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On 04/30/2011 01:17 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.37 and 2.6.38.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.37 and 2.6.38.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=31702
> Subject		: ath5k phy2: failed to wakeup the MAC Chip
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-03-22 19:15 (40 days old)
>
>
>

seems fixed with the current over here.

Justin P. Mattock
