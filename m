From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Mon, 18 Jan 2010 13:36:56 +0200
Message-ID: <4B5447D8.9060701@cs.helsinki.fi>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <20100116174821.GA18306@redhat.com> <201001162257.16277.rjw@sisk.pl> <alpine.LFD.2.00.1001161402400.13231@localhost.localdomain> <20100117123218.GA3182@redhat.com> <84144f021001170618g708a7c14ob1b222ab1cbdaa20@mail.gmail.com> <20100117161726.5752b181@schatten.dmk.lab> <84144f021001170843s67afae24oaabf09e9b13af8db@mail.gmail.com> <84144f021001170923o30d37becw57ebbd780f63b69e@mail.gmail.com> <20100118112619.GA8387@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754487Ab0ARLhH@vger.kernel.org>
In-Reply-To: <20100118112619.GA8387@redhat.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Michael S. Tsirkin" <m.s.tsirkin@gmail.com>
Cc: Florian Mickler <florian@mickler.org>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>, Jesse Barnes <jbarnes@virtuousgeek.org>

Michael S. Tsirkin kirjoitti:
> Well, I've been using 2.6.32 day to day since it came out and never saw
> this bug there. What do you do to trigger this bug?

It usually triggers when I'm building a kernel. I don't have a good test 
case for this, I just need to use the machine long enough to see a 
flash. And it's pretty hard to trigger in 2.6.32.

I am now bisecting in the middle of the i915 merge in 2.6.31 so if 
people know there are suspicious commits that I should try to revert, 
please let me know.

			Pekka
