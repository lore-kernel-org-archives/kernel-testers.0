From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #30582] WARNING: at drivers/net/wireless/ath/ath9k/recv.c:536
 ath_stoprecv+0xc8/0xda [ath9k]()
Date: Sat, 30 Apr 2011 15:37:36 -0700
Message-ID: <4DBC8F30.4000301@gmail.com>
References: <QbBtx5c9v1J.A.JaF.PxGvNB@chimera> <9nxEC7x0HFO.A.z1G.0yGvNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=4419ZR5ZUZ85k9Zt5WV6EUpt+c6EbzEu3OLHyxcHTok=;
        b=Z2k7abr2wT9NSce06ueVcyJg73K1FweIB2Z2JNZd2Y0kuEmSwnjVOUQIbnHCLidrzd
         t3Uoeq4K+283+as538u4AttejjKwZ/ZeflywsNHmA1skrLvjEsmem1q5qJU5uo19wsVP
         p4dgOcBRiWmsOM9szb5MbvlCyLkvy8W7UsIKQ=
In-Reply-To: <9nxEC7x0HFO.A.z1G.0yGvNB@chimera>
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
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=30582
> Subject		: WARNING: at drivers/net/wireless/ath/ath9k/recv.c:536 ath_stoprecv+0xc8/0xda [ath9k]()
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-03-03 5:47 (59 days old)
> Message-ID	:<AANLkTik9To0Rkq2FRqQFB2wNu0kyJ7CzyBek2jBp36Cb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=129913127722786&w=2
>
>
>

appologizes for not responding last week on this. Anyways I looked at 
the machine with the latest, and this is fixed over here(attached dmesg 
to the bug report)

Justin P. Mattock
