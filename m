From: JD <jd1008-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: udevd high cpu hogging in kernel-2.6.34   git8 to git-13
Date: Thu, 27 May 2010 21:14:51 -0700
Message-ID: <4BFF433B.6060506@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:subject:content-type
         :content-transfer-encoding;
        bh=rs9+Cosl8n+J+zudeokOAmzF9WyB72QuEwi4wiNx8Ek=;
        b=RGMlsuYZihmCEDFklP4rLQh8EyAvazb/ZLxy3T/RSxTWevN0HPihInmY6B0ySJC3qz
         gMCrQ1It0IXLP+o9t3k/OaRbfVQNXcIRdvWuA/rddrnt+Gsmma+cr/lKJXYsxCYe58bh
         tuwKxyvh3by6s8p/0KbGCN1Y6MqnRnd+BQWuU=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I noticed that since git8, udevd consumes from 50 to 80 percent of cpu.
The main udevd thread is niced to -4, and 6 or more child threads are 
niced -2.

So, I backpedaled to git7, which does not have this "feature" :)

Cheers,

JD
