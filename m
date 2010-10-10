From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #19392] WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475
 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
Date: Sun, 10 Oct 2010 12:52:40 -0700
Message-ID: <4CB21988.1010108@gmail.com>
References: <v0Rsc8XZnFC.A.-xF.oqfsMB@chimera> <xpndfyzv9iD.A.STG.7qfsMB@chimera> <4CB211C7.20809@gmail.com> <201010102141.45916.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=sUulmhNArgVnZJpZaFRpVCt112gH9SEy2NpygA/QicM=;
        b=Q2iuiHxZPRGQVyoivqJNydnPb8MJ99iy4HZl6fWDTSetmviWA2qCYNWpQboOpiSv4T
         aRc45QcjozLujKx0MuX1pUFJlRuLr6NcJONJa41lko9mnLuXn7V4Gwo/hFp50VPdMWY5
         dMQ5yXamwXdg3gsTZyH96GBrB/xanE0TDsUpw=
In-Reply-To: <201010102141.45916.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dominik Brodowski <linux-X3ehHDuj6sIIGcDfoQAp7OTW4wlIGRCZ@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

  On 10/10/2010 12:41 PM, Rafael J. Wysocki wrote:
> On Sunday, October 10, 2010, Justin P. Mattock wrote:
>>    On 10/10/2010 10:51 AM, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a summary report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.35.  Please verify if it still should be listed and let the tracking team
>>> know (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19392
>>> Subject		: WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
>>> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>> Date		: 2010-09-28 22:30 (13 days old)
>>> Message-ID	:<AANLkTim5WCGKPvEkOkO_YnMF9pg8mvLfQoFBNUFpfa_k-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
>>> References	: http://marc.info/?l=linux-kernel&m=128571307018635&w=2
>>>
>>>
>>>
>> as far as I know this is still here.. I can pull the latest to see
>> if it's been fixed, as well as the wireless tree to see.
> Well, please do.
>
> Rafael
>

yeah.. just a painful machine to do so on...(slooooow)
but will sit though it..(I'll start on monday)

Justin P. Mattock
