From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: s2disk hang update
Date: Fri, 26 Feb 2010 09:26:37 +0000
Message-ID: <9b2b86521002260126g5acabb79uae961dd8668b3c09@mail.gmail.com>
References: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com>
	 <201002242152.55408.rjw@sisk.pl>
	 <9b2b86521002250510m75c8b314o37388a04b53a2b67@mail.gmail.com>
	 <201002252104.51187.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=jqN+i7ZB/LGNc4BjjEzjcWarG47IvWMy84UU06xhV3g=;
        b=YsZf9Kqz3Kg8XqIBPX97kJ5b/BfWvQ3aploxM7dOcS0TDafDLXY1ATAgcG8oENNC+q
         a4f8P12GyjakTgbxExYO50iMkqsi33udLXDA6RaYdDZREU66QZPuMhoYnrYVHbAwZIsg
         uZf6de7q9kCAu8qHEg2Xp16APZbPB6SdVMyw0=
In-Reply-To: <201002252104.51187.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Linux MM <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>

On 2/25/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Thursday 25 February 2010, Alan Jenkins wrote:
>> On 2/24/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> > On Wednesday 24 February 2010, Alan Jenkins wrote:
> ...
>>
>> > -	while (to_free_normal > 0 && to_free_highmem > 0) {
>> > +	while (to_free_normal > 0 || to_free_highmem > 0) {
>>
>> Yes, that seems to do it.  No more hangs so far (and I can still
>> reproduce the hang with too many applications if I un-apply the
>> patch).
>
> OK, great.  Is this with or without the NOIO-enforcing patch?

With.

>> I did see a non-fatal allocation failure though, so I'm still not sure
>> that the current implementation is strictly correct.
>>
>> This is without the patch to increase "to_free_normal".  If I get the
>> allocation failure again, should I try testing the "free 20% extra"
>> patch?
>
> Either that or try to increase SPARE_PAGES.  That should actually work with
> the last patch applied. :-)
>
> Rafael

<grin>, OK.
