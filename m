From: Johannes Engel <jcnengel@googlemail.com>
Subject: Re: 2.6.33-rc3-git3: Reported regressions 2.6.31 -> 2.6.32
Date: Tue, 12 Jan 2010 18:39:01 +0100
Message-ID: <4B4CB3B5.3060900@googlemail.com>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-acpi-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=PQgo+lRKRP8Xnx4mmqV6Ghu518S+/HAHCFCb0nLWo/A=;
        b=XXNLlSzjusfuPqwYgRK93lEpvoMPvLp0dQ89BF3Y6whrwJKCRNjoC6tkqdM5LhCmdG
         +tmUZfZVIDQYa9o/Tm8C5HrPboMAyV3DNxFuFMLSbttHBsQCXk0wOqyhAl5JEAyleXX0
         0HnG1l7Hnf0lp8rvoWUbqYXOTzSBUwT17nmUo=
In-Reply-To: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
Sender: linux-acpi-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, DRI <dri-devel@lists.sourceforge.net>, Natalie Protasevich <protasnb@gmail.com>, Linux ACPI <linux-acpi@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>

On 10.01.2010 23:45, Rafael J. Wysocki wrote:
> This message contains a list of some regressions introduced between 2.6.31 and
> 2.6.32, for which there are no fixes in the mainline I know of.  If any of them
> have been fixed already, please let me know.
>
> If you know of any other unresolved regressions introduced between 2.6.31
> and 2.6.32, please let me know either and I'll add them to the list.
>   
How about #15004?

Cheers, Johannes
