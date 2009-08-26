From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14012] latest git fried my x86_64 imac
Date: Tue, 25 Aug 2009 17:28:41 -0700
Message-ID: <4A9481B9.3070607@gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.NXH.BtGlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756589AbZHZA1y@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ATkl9HQIXn+3E20Oysm9KDRDpGPk6MnecSTnqweS1yw=;
        b=FjS3ta7r3z3qfbWuh7gwzC2ryXFEL0rgxDEBKX//XLK92dyf89FIFc62fNEc0XMP9n
         gtGLn9o+Y8bXeoZdYyLlu/LwNcyHPl00qVKnJd0hTbqhxilQv87Z4hC0YSNofQWNvywd
         h4CZyGMP1t8CHC8RylYm7bo0c4k9HIY+fseD0=
In-Reply-To: <_yaHeGjHEzG.A.NXH.BtGlKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14012
> Subject		: latest git fried my x86_64 imac
> Submitter	: Justin P. Mattock<justinmattock@gmail.com>
> Date		: 2009-08-13 07:20 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=125014080427090&w=4
>
>
>
>    
if I revert this commit:
af6af30c0fcd77e621638e53ef8b176bca8bd3b4
I can get a normal bootup.

As for this  bug, it seems I'm the only
hitting this. The system is a fresh LFS build
x86_64.
In regards to keeping this open
not sure, I don't have a problem with closing this
and taking the blame as something I did during my build
of the system, then if this becomes more frequent
then open a new bug.

Justin P. Mattock
