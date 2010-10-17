From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #19392] WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475
 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
Date: Sun, 17 Oct 2010 14:44:09 -0700
Message-ID: <4CBB6E29.9090808@gmail.com>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera> <7N-qxsaxKCN.A.YpC.ok1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=6umi2wd69leWz5LHa/MZEqt7qYSZ4ofIRlLppxScUfg=;
        b=h7KZDvTG5VSxdu/HifTR4GjAgGh1ySwfWDbw/NUGzOJC2H1Vwj/CcHjn/5smAJO//g
         HsyyZrXvFmLrnrnoul7Q/V4H1MZCynjgPoq03EMklL0ju0Zel+HHU03+C3vgGMdCs+sj
         NhnrT6eP3jplqCjCvq8dC2ROJR5rxXtxhiXkY=
In-Reply-To: <7N-qxsaxKCN.A.YpC.ok1uMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dominik Brodowski <linux-X3ehHDuj6sIIGcDfoQAp7OTW4wlIGRCZ@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On 10/17/2010 01:21 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.35.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19392
> Subject		: WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-09-28 22:30 (20 days old)
> Message-ID	:<AANLkTim5WCGKPvEkOkO_YnMF9pg8mvLfQoFBNUFpfa_k-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128571307018635&w=2
>
>
>


yeah it's still here...(I can try and play with this, but who knows..)

Justin P. Mattock
