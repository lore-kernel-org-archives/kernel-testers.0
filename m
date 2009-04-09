From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: Regression: First hibernation attempt fails
Date: Thu, 9 Apr 2009 13:29:47 +0100
Message-ID: <9b2b86520904090529u4586906ei878967c2636417be@mail.gmail.com>
References: <49DDD83F.507@tuffmail.co.uk>
Reply-To: alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:reply-to:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=4lgza7Gt0LHqsMXtWFR6yml+1/ZP+E6HbAFvvAW8hlE=;
        b=NZxcvoEGx109XmujFb5MNCQXNOT2qk9Be0RbYiU4gyqSzEIdZZVRE/ElIRi05h4wdN
         4MbtofEB8xqk1mYqUFJfedwCiw3bhvOEFxaCUbLsgTQCuSZN3P8/A+OEk4mcr68W7aYb
         w8wqkksEMRNcmZ7w3Ebwa21U4iTz8tBkSrxqc=
In-Reply-To: <49DDD83F.507-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 4/9/09, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org> wrote:
> Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
> wonder if it rings any bells?
>
> On my laptop (EEE 4G), the first attempt at hibernation fails.
> Subsequent attempts succeed.
>
> If I use s2disk as normal, I see "snapshotting system", then before it
> gets to write out the image, it aborts and switches back to X.   I can't
> see any error message, even if I check the log with "dmesg".
>
> If I use "echo disk > /sys/power/state", echo reports the error "Cannot
> allocate memory".
>
> This only happens if I've logged in to X first.  In fact, I narrowed it
> down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
> then it doesn't happen.

Hmm... killing g-p-m doesn't seem to affect this any more, perhaps I
spoke too soon.  But not logging into X still avoids it.
