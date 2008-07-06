From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10954] hda_intel: azx_get_response timeout, switching to polling mode: last cmd=0x011f000c
Date: Sun, 6 Jul 2008 17:47:57 +0000
Message-ID: <dd18b0c30807061047m60e4e848v40dc1e8f49127bde@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.D3B.K0LcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Lfv5qYFgb3PxcG8Ov1BXC4zwOBZcwnw+jSEN7n4sk5M=;
        b=surLQWBSe1ih5fuZADzyvbpOXkmZ1ZWmxMT6m43lNBJlEkQaEvY8bIZ5TzSdB5tXMU
         UhQsu5zJS+nvjEY2EK/1pEkiqpkLqS6YMuRkYY8JeCkHWTIlCtB0WFsGJLBNWTFrLqRu
         rxmPAfJKPbG3O1IuyGLCuIc2NT5u2QFJyvtmA=
In-Reply-To: <uBi7uNfg81L.A.D3B.K0LcIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Jul 6, 2008 at 11:45 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
> Date            : 2008-06-21 2:05 (16 days old)
> References      : http://marc.info/?l=linux-kernel&m=121401399622190&w=4
>                  http://marc.info/?t=121416231700010&r=1&w=4
>
>
>

yes;
as an estimate(been busy with another bug), I'm going to say out of
100 reboots this message will
appear 2 times in a row, and then disappear.
regards;

-- 
Justin P. Mattock
