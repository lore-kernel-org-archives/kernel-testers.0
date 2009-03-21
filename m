From: Michael Riepe <michael.riepe@googlemail.com>
Subject: Re: ptrace performance
Date: Sat, 21 Mar 2009 18:02:54 +0100
Message-ID: <49C51DBE.4000403@googlemail.com>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera> <qm8_cedJGaP.A.c1H.2PCvJB@chimera> <49C4FD41.4030504@googlemail.com> <20090321152217.GB1073@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756951AbZCURDW@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:x-accept-language:mime-version:to:cc:subject:references
         :in-reply-to:x-enigmail-version:content-type
         :content-transfer-encoding;
        bh=CzW69iix3ovdko5XA2tCeEbKwRhEMyprkb/AI6E2o0U=;
        b=A423YI4UgzJQcLvVRsurijHomMZsq9hvJS3X2g39J7YoGqn5et+ilh+VPTKDG3NDSi
         z5jy6F6/IX6Lbd4pu0Z4jsOAjVr8ghsx4Yd64uBe7VsXh6iFakE6AVCRq8bRakkzlHQ3
         Bq8JcIQUSHEYd9qtkuObAyxxXJskFJj70J9G4=
In-Reply-To: <20090321152217.GB1073@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Miklos Szeredi <miklos@szeredi.hu>



Ingo Molnar wrote:

> that's almost certainly due to the wait_task_inactive() change. Does 
> the patch below improve things?

That makes it *much* better - dd reports more than 3 GB/s on the Core
Duo. I'll have to check the other systems later; they're busy at the moment.

-- 
Michael "Tired" Riepe <michael.riepe@googlemail.com>
X-Tired: Each morning I get up I die a little
