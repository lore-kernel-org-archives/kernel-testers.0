From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong@gmail.com>
Subject: Re: [Bug #13660] Crashes during boot on 2.6.30 / 2.6.31-rc, random 
	programs
Date: Tue, 7 Jul 2009 22:44:42 +0800
Message-ID: <2375c9f90907070744t6a8079bfi827d0c1a1697cb10@mail.gmail.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.5zE.DjASKB@chimera>
	 <a5d9929e0907011336g31599a29hca3c204f1b53b775@mail.gmail.com>
	 <2375c9f90907070705p1ae6ebe4x61bda34dd072c1c@mail.gmail.com>
	 <a5d9929e0907070722j563cf485j720274e776f736e4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758793AbZGGOoz@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=S1VkCgo8Wyp55K/NIynzk3yaxj2vCIrmIgYq7O4uMRU=;
        b=gz367iDRTpxwJTpgWc+nSJXtZa0GobngffcsUrFPM4OsVXmap81AVf0kPiWUq6CdZD
         3117qmEdPiPvNbYvDvzJzXfDAf1HvHyhD5w9HzY48f+HPM9XTZiL9zhT7g3rA3qY+1Er
         hnVoky584yEfQ06JM9U0ewvhFE8WyD+nSvvqI=
In-Reply-To: <a5d9929e0907070722j563cf485j720274e776f736e4@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Joao Correia <joaomiguelcorreia@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Tue, Jul 7, 2009 at 10:22 PM, Joao
Correia<joaomiguelcorreia@gmail.com> wrote:
> Already testing the changes, just to see if something else breaks.
>
> Any special notes on the patch (a basic guideline info on patches
> would be great, just so i dont mess it up)? Never submited one before.

Yes, check Documentation/SubmittingPatches and Documentation/email-clients.txt.

I am not sure if Peter likes them, but it is a good idea to split them
and send one by one.

Good luck!
