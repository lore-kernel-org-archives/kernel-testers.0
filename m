From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10954] hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x011f000c
Date: Sun, 13 Jul 2008 19:37:26 +0000
Message-ID: <dd18b0c30807131237r5afd6d99r26df2956ac962568@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.si.HIleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=7mm6ecCrb8TIuHZO3Bb31NKE2+Vsj7p9yICARTetb0M=;
        b=DJTJv7AT13tmlc6U1zlrAnB3I1AULqgkvhlW9QjZ2lIN9MGBqhSjt8E8eOVgv+tE3C
         yIZ6bqT3WXh2CGXDeTW6Ti8pH0TTl0z65F/ByWc5PC2GcBKsW3+c8SdF2T6aNw1usFKo
         6bK3f9WqzkvNRkY3TwSD/1Xsh/zP9/OCztGjo=
In-Reply-To: <c6ZRbn0adb.A.si.HIleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Jul 13, 2008 at 6:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10954
> Subject         : hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x011f000c
> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-06-21 2:05 (23 days old)
> References      : http://marc.info/?l=linux-kernel&m=121401399622190&w=4
>                  http://marc.info/?t=121416231700010&r=1&w=4
>
>
>

yes;
after running a small test of removing options snd-hda-intel position_fix=1
out of /etc/modprobe.d I was still receiving this message, but instead
of twice in a row
like it was doing, I am only seeing this happen occasionally once.

-- 
Justin P. Mattock
