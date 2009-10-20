From: Sven Geggus <lists@fuchsschwanzdomain.de>
Subject: Re: Kernel crash on 2.6.31.x (kcryptd: page allocation failure..)
Date: Tue, 20 Oct 2009 21:16:57 +0200
Message-ID: <20091020191656.GA11718@geggus.net>
References: <hbd4dk$5ac$1@ultimate100.geggus.net> <200910172230.13162.elendil@planet.nl> <hbd9v8$7rf$1@ultimate100.geggus.net> <200910190141.50752.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
Content-Disposition: inline
In-Reply-To: <200910190141.50752.elendil@planet.nl>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil@planet.nl>
Cc: linux-kernel@vger.kernel.org, Mel Gorman <mel@csn.ul.ie>, linux-mm@kvack.org, Kernel Testers List <kernel-testers@vger.kernel.org>

Frans Pop schrieb am Montag, den 19. Oktober um 01:41 Uhr:

> In the mean time I've been able to trace the culprit. Could you please try 
> if reverting 373c0a7e + 8aa7e847 [1] on top of 2.6.31 fixes the issue for 
> you?

Unfortunately not :(

Starting from 2.6.31.4 I did
git revert 373c0a7e
git revert 8aa7e847 and build a new kernel.

The problem persists. The Kernel crashed again, this
time in "swapper".

Regards

Sven

-- 
"I'm a bastard, and proud of it"
                          (Linus Torvalds, Wednesday Sep 6, 2000)

/me is giggls@ircnet, http://sven.gegg.us/ on the Web

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
