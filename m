From: Michael Riepe <michael.riepe-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: ptrace performance (was: [Bug #12208] uml is very slow on 2.6.28
 host)
Date: Sat, 21 Mar 2009 15:44:17 +0100
Message-ID: <49C4FD41.4030504@googlemail.com>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera> <qm8_cedJGaP.A.c1H.2PCvJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:x-accept-language:mime-version:to:cc:subject:references
         :in-reply-to:x-enigmail-version:content-type
         :content-transfer-encoding;
        bh=NEADi6ZStyhNTK9WR4x/4tvHxKK/2bbG84n6e4KAS4g=;
        b=i09ok1LSTL8pmHZI4NqbD9rUq1WBAhincwo62Bnmd4HleNBVhrsmhx1k6K0s9XznJ9
         9Yu7K+hnBhtzIJDNnvL+wSp6vAxzn4Dq6RHn0g/yVStCtuj5/gx8ionBb13ZOTOjOSy2
         Y4t2lc4pitNQx0Kvd6/yCHxPIp1UTvpnmFj7o=
In-Reply-To: <qm8_cedJGaP.A.c1H.2PCvJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>

Disclaimer: I'm not using UML, but these problems may be related.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
> Subject		: uml is very slow on 2.6.28 host
> Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
> Date		: 2008-12-12 9:35 (93 days old)
> References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4

The other day I noticed a dramatic ptrace slowdown between 2.6.27 and
2.6.28.x (verified with 2.6.28.8). In particular, a command like

	dd if=/dev/zero of=/dev/null bs=1024k count=1024

will normally report a throughput in the GB/s range. On 2.6.27, this is
also true if you run

	strace -o /dev/null <dd command as above>

which is only a little slower. But if I do the same on 2.6.28.x, I get a
throughput of about 100 MB/s or less, i.e. less than 10%. I tried the
commands on three different machines (an Athlon64 3000+, a Core Duo
T2400 and an Atom 330), and they all behave similar. The more system
calls a program uses, the worse the slowdown (try the dd command with
bs=16k and count=65536, for example - but don't hold your breath).

Interestingly, the CPUs are mostly idle while the command is executing
on 2.6.28.x, but there is a high (system) load on 2.6.27. Therefore, I
suspect that it's a scheduling or maybe timer problem that was
introduced between 2.6.27 and 2.6.28. I haven't had the time to check
the rc kernels yet; perhaps someone else can run a quick check to verify
that it's gone in the latest 2.6.29-rc.

-- 
Michael "Tired" Riepe <michael.riepe-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
X-Tired: Each morning I get up I die a little
