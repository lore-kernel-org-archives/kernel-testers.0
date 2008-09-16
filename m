From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.27-rc6: lockdep warning: iprune_mutex at shrink_icache_memory+0x38/0x1a8
Date: Tue, 16 Sep 2008 11:35:20 +0400
Message-ID: <a4423d670809160035s25fd5227j831492b3f43daa6a@mail.gmail.com>
References: <20080913233138.GA19576@orion> <20080916025204.GL5811@disturbed>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=ep5QLwtqyZnzry7n2XZvZBGagzNNS9cpevCUqjRHClw=;
        b=pAVgkRSjGeSpI5V3R7bd3Ra5NxlWgzUVnnIXa+oYmGHT+0ec5QTlOdsxQMVEmv7g9g
         xodiXCtcVJtrTgqXj+cnFyL3o1wS0fSvusFQFhi7Pgh+2c8YceKKhgOI7Yb/oxM5/o3S
         vuC9nWNcqlW27pg7+p4Q6vacaIYc4cKvXBogk=
In-Reply-To: <20080916025204.GL5811@disturbed>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-fsdevel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2008/9/16 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
> On Sun, Sep 14, 2008 at 03:31:38AM +0400, Alexander Beregalov wrote:
>> Hi
>>
>> [ INFO: possible circular locking dependency detected ]
>> 2.6.27-rc6-00034-gd1c6d2e #3
>> -------------------------------------------------------
>> nfsd/1766 is trying to acquire lock:
>>  (iprune_mutex){--..}, at: [<c01743fb>] shrink_icache_memory+0x38/0x1a8
>>
>>  but task is already holding lock:
>>   (&(&ip->i_iolock)->mr_lock){----}, at: [<c021134f>]
>>   xfs_ilock+0xa2/0xd6
>>
>>
>> I read files through nfs and saw delay for few seconds.
>> System is x86_32, nfs, xfs.
>> The last working kernel is 2.6.27-rc5,
>> I do not know yet is it reproducible or not.
>
> <sigh>
>
> We need a FAQ for this one. It's a false positive.  Google for an
> explanation - I've explained it 4 or 5 times in the past year and
> asked that the lockdep folk invent a special annotation for the
> iprune_mutex (or memory reclaim) because of the way it can cause
> recursion into the filesystem and hence invert lock orders without
> causing deadlocks.....

Hi Dave

Yes, you already explained a similar message to me, but it was a bug,
not false positive.
http://lkml.org/lkml/2008/7/3/29
http://lkml.org/lkml/2008/7/3/315

I will try to bisect.
It is not a OOM case.
