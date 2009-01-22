From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: BISECTED: 2.6.29-rc2 regression: hibernation hang on eeepc-701
Date: Thu, 22 Jan 2009 11:30:41 +0000
Message-ID: <497858E1.5070303@tuffmail.co.uk>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=4o1IkZAi/g7Mor9v7gQ50w1ySakSyM9166lT6RwRqBc=;
        b=W0cwJquDHpI3dggrY4GAWQrtNCvUGHWN50fgjeY4Yh5550jzjtoHkX1npJFI+F/cnp
         lxULjZeYOIrwYhNgZneIv9Dx3bZ2Bp2Dg50i+oy+PGpzygs163K5F8Cx42mZLtCCPQ3V
         HpZ0+Oh1mpOtDfNbYOfo/e/XNwXi+z9wyVH9Q=
In-Reply-To: <9b2b86520901180345j434eacbdn7386958991ee50b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarn>

Alan Jenkins wrote:
> Hibernation hangs just after writing the image.  With s2disk I can see
> this from the console messages.  The same hang happens with kernel
> swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
> the image has been written from the HDD led.
>
> In either case, I can still hard-power-off and resume from hibernation.
>
> It doesn't hang if I use the shutdown method (either 'echo shutdown |
> sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').
>   

I've bisected this to commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98. 
It doesn't revert cleanly from RC2.

I think it's distinct from the other two reported suspend regressions. 
I'm not using acpi-cpufreq, and the issue doesn't affect resume.

Alan


commit 571ff7584bb9e05fca0eb79752ae55a46faf3a98
Author: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Date:   Wed Jan 7 13:05:05 2009 +0100

    PCI PM: Power-manage devices without drivers during suspend-resume

    PCI devices without drivers can be put into low power states during
    suspend with the help of pci_prepare_to_sleep() and prevented from
    generating wake-up events during resume with the help of
    pci_enable_wake().  However, it's better not to put bridges into
    low power states during suspend, because that might result in entire
    bus segments being powered off.

    Signed-off-by: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
    Acked-by: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
    Signed-off-by: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

:040000 040000 6b6fb7bfa561583f14bdf55b084473dcf9cd1765
d72fbda87eff26db8f2574e868a793b79deb9f92 M      drivers
