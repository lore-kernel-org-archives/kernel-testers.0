From: "Pekka Enberg" <penberg@cs.helsinki.fi>
Subject: Re: 2.6.28-rc9-git1: Reported regressions from 2.6.27
Date: Sun, 21 Dec 2008 11:07:48 +0200
Message-ID: <84144f020812210107k4be14431s4fb61f2d31da8621@mail.gmail.com>
References: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753250AbYLUJIK@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=kQM10/1YwJQTqq+sF80nfS5IlcLE4bdZUs3f0igi1Sg=;
        b=sjyJTn6NN1VxMfEf9R6dJgyrUUAKBewFQ5AiplUrXhrLeYFDhNObTHS9S850GXNAr4
         60MU8n1pJ4ddR5d3MW1fDIS6Nt25jTTJVnaKQg9QkVB20v4adn8uc9M/vWuqftgaCR8p
         qljQHDV2UU2capwL1P4cPLWQdRZVQJY7XsKOc=
In-Reply-To: <vYigq6XkyUN.A.E1H.7ZYTJB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Vegard Nossum <vegard.nossum@gmail.com>, Ingo Molnar <mingo@elte.hu>

On Sat, Dec 20, 2008 at 11:56 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12156
> Subject         : v2.6.28-rc2: x86_32 relocation regression?
> Submitter       : Vegard Nossum <vegard.nossum@gmail.com>
> Date            : 2008-11-24 21:19 (27 days old)
> References      : http://marc.info/?l=linux-kernel&m=122756158220966&w=4

I think this one has a fix in x86.git:

http://lkml.org/lkml/2008/12/18/224
