From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Bisected: s2disk (uswsusp only) hangs just before poweroff
Date: Tue, 01 Dec 2009 20:27:21 +0000
Message-ID: <4B157C29.6090805@tuffmail.co.uk>
References: <4B1575AC.6080904@tuffmail.co.uk> <4B157B81.9050703@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=L2oSoU0g+rGvX813WE11hk6Oek0GZL2dRArlwvnU57M=;
        b=bnNtSXg4GNfV7kAra/qYMsheXk8AJW3OwtAHGDGEDkgRp7NiBQbRY8OUbYqilh2Yh6
         mxPBTPIESuDGUz0Xg4QzCoZx1ZP+B+pM4CP6nhEnSSznoXiXtKT+/1/Gs5UGRRlcVvTC
         BVz5B0DI+ZGmNBKp/AgplmiihgqhQHStUZPBg=
In-Reply-To: <4B157B81.9050703-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

Justin P. Mattock wrote:
> On 12/01/09 11:59, Alan Jenkins wrote:
>> Hi
>>
>> Suspend to disk is (sometimes) hanging for me in 2.6.32-rc. I finally
>> got around to bisecting it, which blamed the following commit by Mel:
>>
>> 5f8dcc2 "page-allocator: split per-cpu list into 
>> one-list-per-migrate-type"
>>
>> I was able to confirm this by reverting the commit, which fixed the
>> hang. I had to revert one other commit first to avoid a conflict:
>>
>> a6f9edd "page-allocator: maintain rolling count of pages to free from
>> the PCP"
>>
>> -- detail --
>>
>> When I suspend my EeePc 701 to disk, it sometimes hangs after writing
>> out the hibernation image. The system is still able to resume from this
>> image (after working around the hang by pressing the power button).
>> This is specific to s2disk from the uswsusp package (which is now
>> installed by default on debian unstable). It doesn't happen if I
>> uninstall uswsusp and use the in-kernel suspend instead.
>>
>> The hang doesn't happen if I boot with "init=/bin/bash" and run s2disk.
>> Nor does it happen if I boot normally, then switch to single user mode
>> ("telinit 12").
>>
>> It only happens if I've logged in to KDE. In the past, this has
>> indicated a problem in a network driver, since NetworkManager only made
>> a connection once I logged in. But it still hangs if I remove both ath5k
>> and atl2 before I log into KDE. (I actually tried removing as many
>> modules as possible: atl2, ath5k, usbcore, snd-hda-intel, psmouse,
>> pcspkr, battery, ac, themal, fan, and eeepc-laptop). Perhaps it's
>> something to do with the size of the hibernation image.
>>
>> -- confidence in the bisection result --
>>
>> The randomness was a bit annoying, but it's not too bad. The hang would
>> normally show up in the first 3 hibernation cycles; I don't remember
>> having to wait more than 6.
>>
>> I wrote a script to do s2disk + rtcwake so I could leave it testing
>> without constantly hitting the power button. This let me test 2.6.32-rc8
>> with the reverts for at least 20 hibernation cycles.
>>
>> Regards
>> Alan
>> -- 
>> To unsubscribe from this list: send the line "unsubscribe 
>> linux-kernel" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.tux.org/lkml/
>>
>
> hmm.. maybe this is what I'm seeing over here
> i.g. on my macbook(ati gpu) the first s2ram will
> lagg for about 30/40 secs before waking up
> then every other cycle afterwards reacts as it should.
> Threw in kernels 2.6.30,31 before doing anything
> but showed the same results, leading me to beleive maybe
> I have some userspace issue(libx86)going on.
>
> I'll try reverting that commit to see.
>
> Thanks
>
> Justin P. Mattock

I don't expect so.  My problem doesn't affect s2ram.  And as far as I 
can tell, my hang is forever... it's more than just 40 seconds.

Regards
Alan
