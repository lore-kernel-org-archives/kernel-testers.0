From: Pekka Enberg <penberg@kernel.org>
Subject: Re: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking atcache_alloc_refill
Date: Mon, 15 Aug 2011 08:46:19 +0300
Message-ID: <CAOJsxLH+qQxVwwx+2t-azc8fw+uz2+M9SCRzMUGdKKbUc1nC7A@mail.gmail.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.o3.YNCSOB@chimera>
	<alpine.DEB.2.00.1108142259120.4228@tiger>
	<201108150736.FFC69227.MQSJVFHFFOOOtL@I-love.SAKURA.ne.jp>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type;
        bh=U2zurq6SyDG47IuyblBGChyhDSfej3Jt/GWyb3uWLXA=;
        b=SwLRPbTL4dns082zNiUlMZT7v5HL6zLkUGX91+Ypevk8XgsJncjV2RwwelOIYAHvrJ
         bIvIIVzsSX0IdjlALJ8Kke9xFZ8cY7PRYFvoauXlexDAUHxNI/vymJjBuX1NJJGXOo7e
         o6tjoq5G7LJ6dh4lheCags+d+rvJuPgw8XVms=
In-Reply-To: <201108150736.FFC69227.MQSJVFHFFOOOtL@I-love.SAKURA.ne.jp>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, maciej.rutecki@gmail.com, florian@mickler.org, peterz@infradead.org

On Mon, Aug 15, 2011 at 1:36 AM, Tetsuo Handa
<penguin-kernel@i-love.sakura.ne.jp> wrote:
> Pekka Enberg wrote:
>> Tetsuio, did Peter's commit 30765b9 ("slab, lockdep: Annotate the locks
>> before using them") and commit 83835b3 ("slab, lockdep: Annotate slab ->
>> rcu -> debug_object -> slab") in Linus' git fix this for you?
>
> Yes. Applying these two commits fixes this problem.
>
> Thank you.

The commits weren't tagged for -stable, I'm afraid. Peter?
