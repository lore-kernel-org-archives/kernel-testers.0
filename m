From: Pavel Machek <pavel@ucw.cz>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Wed, 22 Apr 2009 15:07:05 +0200
Message-ID: <20090422130705.GA16186@elf.ucw.cz>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090417063007.GB4593@kernel.dk> <49E83DC4.8040207@tuffmail.co.uk> <20090417091321.GP4593@kernel.dk> <alpine.LFD.2.00.0904170813550.4042@localhost.localdomain> <20090407080632.GG1408@ucw.cz> <20090420122044.7ea6cc15.akpm@linux-foundation.org> <20090420195306.GA3299@elf.ucw.cz> <20090420130412.bc337673.akpm@linux-foundation.org> <20090420163734.b8e24fc9.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753930AbZDVNEV@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20090420163734.b8e24fc9.akpm@linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm@linux-foundation.org>
Cc: torvalds@linux-foundation.org, jens.axboe@oracle.com, alan-jenkins@tuffmail.co.uk, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

Hi!

> Of course, this will protect the calling task from getting oom-killed. 
> But it doesn't protect other tasks from getting oom-killed due to the
> activity of _this_ task.
> 
> But I think that problem already exists, and that this proposal doesn't
> worsen anything, yes?
> 
> Or is it the case that all other tasks are safely stuck in the freezer
> at this time, so they won't be allocating any memory anyway?

That is the idea, yes. ... but we now have more threads that are not
freezable... so they may allocate the memory.

Is it non-feasible to free memory without really going and allocating
everything?

									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
