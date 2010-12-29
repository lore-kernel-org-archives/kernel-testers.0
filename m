From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable
 to enumerate USB port" - bisected to commit 3df7169e
Date: Wed, 29 Dec 2010 17:31:24 -0600
Message-ID: <4D1BC4CC.6060700@lwfinger.net>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.JLH.iA8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Jd4RWOj/HrOkyrSAlUfUx5kRNeNyhm4tqZo8vpoACvA=;
        b=r6RtLNBfZWvDCgt8PdDovj01d9UfkiVotSEQDK6HiULQshlFVP1hB9tw/rPAiqSONW
         NKl1u8N8tfW4c0z6yKy9iCDcCoVKbtkxeQrsKrvzJ+7AhaQjZyVaImCFUnJgLczfgZYK
         S0PSAQBzgnSUk+3qkOTKvHkT5N2f2GyyS8Jy8=
In-Reply-To: <sV7shrPOroO.A.JLH.iA8GNB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@suse.de>

On 12/29/2010 05:06 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22562
> Subject		: Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
> Submitter	: Larry Finger <Larry.Finger@lwfinger.net>
> Date		: 2010-11-02 22:32 (58 days old)
> First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
> Message-ID	: <4CD09166.4060202@lwfinger.net>
> References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2

It is still in 2.6.37-rc8. I got some debugging tips from Alan Stern, but have
not had time to follow-up. I hope/need to make some progress before 2.6.37 is
released.
