From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable
 to enumerate USB port" - bisected to commit 3df7169e
Date: Thu, 18 Nov 2010 18:20:03 -0600
Message-ID: <4CE5C2B3.2070906@lwfinger.net>
References: <sKkKYVppECN.A.KhC.Phb5MB@chimera> <ATV3yiK8i4C.A.wXE.Nib5MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=opR4zPlaDxkxnawXXOcEmiYCDbcsYomHbxjb2ZWpiG0=;
        b=sMWU9HAbLm+4qS6KDST0J+oX7zLnY2OswPoJee2XASdNn3RxzDvTiK1x0E+mX8S8sV
         s92iacbiCnP0BM9lOQSQ7Zp7oOjxskCSbRQ07wpx/2I7ul0DJN5vT4dNL4detunpEP6u
         8xBJ4dhRYZqqpwljEMsFMb5Wy027wof5K623Q=
In-Reply-To: <ATV3yiK8i4C.A.wXE.Nib5MB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@suse.de>

On 11/18/2010 05:42 PM, Rafael J. Wysocki wrote:
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
> Date		: 2010-11-02 22:32 (17 days old)
> First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
> Message-ID	: <4CD09166.4060202@lwfinger.net>
> References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2

This bug has not yet been fixed.

Larry
