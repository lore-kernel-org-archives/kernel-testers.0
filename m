From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
 PANIC: early exception 08 rip 246:10	 error	ffffffff810251b5 cr2 0)
Date: Wed, 03 Feb 2010 15:05:07 -0800
Message-ID: <4B6A0123.3010607@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=hYAttdrZV/kjyoLRVjCvQseVqL8QFssHh9yAZt4ONOU=;
        b=Yij0R0+EoImKnFEWA4EL+lU3IJqxnSNEFXQ75XkEzQtxhCwzhWLHZtecpNo7FioORk
         vsshqf7hREdKuheYVhTyd+ym7b87KpOvEO/UTUPX2UTo3LdbvnS57LocebxvIpAd71pc
         c9gUKqIlNJlcTIuh5EJTXbn587dQZz+cvQcJ8=
In-Reply-To: <4B694D5C020000780002D6DA-Qfbpwmsw6RoS3W1tAdPHOtBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Cc: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bernhard.kaindl-hi6Y0CQ0nG0@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Rafael Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, ebiderman-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org, hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org

o.k. while looking into grub2
I had noticed during compile time
and reading posts, that -m32 is always
being called(no matter how much I tweaked the
Makefile). seeing this made me think well
if this thing is being built with -m32 maybe that might
be it i.g. 32bit to 64bit might cause some issues, but
unfortunately is not the case(building lilo you can achieve a pure64
bit build).

So after all of that still no go, but the positive side
is lilo is able to show more up the line of the boot message
error:

[   0.000000] 0100000000 - 0140000000 page 2M
[   0.000000] kernel direct mapping tables up to 140000000 @ b000-11000
[   0.000000] init_ohci1394_dma: initializing OHCI-1394 at 05:00.0
[   0.000000] bootmem alloc of 4096 bytes failed!
[   0.000000] Kernel panic - not syncing: Out of memory
[   0.000000] Pid: 0, comm: swapper Not tainted 
2.6.33-rc6-00072-gab65832 # 39
[   0.000000] Call Trace:

then the rest shown on the picture on the bug report.

Out of memory?

Justin P. Mattock
