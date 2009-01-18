From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: 2.6.29-rc2 regression: hibernation hang on eeepc-701 (method 
	"platform" only)
Date: Sun, 18 Jan 2009 19:19:48 +0000
Message-ID: <9b2b86520901181119kfdc15bev7f6d859172355055@mail.gmail.com>
References: <9b2b86520901180345j434eacbdn7386958991ee50b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=DSGftXrfbPQ2SFRuQGahDLKXDc+zoAb49ik4KLI5iqA=;
        b=fTV24+PzQRJSiNQxQ5MXvbFT0rcKkascvUJc8amxX9JjYiuEk2CVGMZCabmJUr9fsQ
         Cb3y+sYr1Px7Yhkfz+k6sFVuJwV8qJ/IQ+1FnB8G4MXTYamAWWPrI99+FrF58Er/Vjfp
         9ycPkH1qGjQFvbU5fJ7Zc56kVzOqBo4Eo0MQw=
In-Reply-To: <9b2b86520901180345j434eacbdn7386958991ee50b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, linux acpi <linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 1/18/09, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org> wrote:
> Hibernation hangs just after writing the image.  With s2disk I can see
> this from the console messages.  The same hang happens with kernel
> swsusp ('echo disk | sudo tee /sys/power/state'), and I can see that
> the image has been written from the HDD led.
>
> In either case, I can still hard-power-off and resume from hibernation.
>
> It doesn't hang if I use the shutdown method (either 'echo shutdown |
> sudo tee /sys/power/disk' or  's2disk -P "shutdown method=shutdown"').

As a wild guess I tried "acpi_sleep=s4_nonvs", but it didn't help.

In fact it didn't seem to work.  The kernel log says that NVS was
still saved and restored.

$ dmesg | grep -i nvs
[    0.000000]  BIOS-e820: 000000001f790000 - 000000001f7d0000 (ACPI NVS)
[    0.000000] Kernel command line: root=/dev/sda2 ro resume=/dev/sda2
resume_offset=144480 quiet acpi_sleep=s4_nonvs
[   91.105449] PM: Saving platform NVS memory
[   91.106707] PM: Restoring platform NVS memory

Thanks
Alan
