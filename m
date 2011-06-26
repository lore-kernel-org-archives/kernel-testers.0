From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #38012] Missing code to load firmware
Date: Sun, 26 Jun 2011 17:10:44 -0500
Message-ID: <4E07AE64.1040707@lwfinger.net>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <XWjMN7gBoXK.A.UPD.fZ6BOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:sender:message-id:date:from:user-agent
         :mime-version:to:cc:subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=MawrpYiLokz6KVNuKqkDgtMNlkHZVXNlXGt/7NVnFE8=;
        b=EjhdNSNE6U3Cc5lY/whsNe15mmR14SltLRf0TDgWCcPHHzVidEaowQNi99jgLPJC1p
         hml8t4Hq5VKpeEBTQtOG2mYqdHHU651Nq2ShDYnxeMiJPOBsGcBvpnaW6VQ9pnvq116e
         FNK9dFRM0t7orECL8Lvuu8psqURKJtiexpyi8=
In-Reply-To: <XWjMN7gBoXK.A.UPD.fZ6BOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

On 06/26/2011 04:23 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.39.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38012
> Subject		: Missing code to load firmware
> Submitter	: Larry Finger<Larry.Finger@lwfinger.net>
> Date		: 2011-06-20 21:44 (7 days old)
> Handled-By	: Larry Finger<Larry.Finger@lwfinger.net>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=63002

The patch has been incorporated into Linville's wireless-testing tree and has 
been pushed upstream. It should be in mainline soon.

Larry
