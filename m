From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to chanes in stop_machine
Date: Tue, 11 Nov 2008 15:47:56 +0100
Message-ID: <19f34abd0811110647y2a00cfbfr2b219a5aa1b3ac9f@mail.gmail.com>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <20081110120401.GA15518@osiris.boeblingen.de.ibm.com>
	 <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl>
	 <20081111105214.GA15645@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=062lH9e8GI9SrumA+wjfXr0uEc6QbYyEPScENWSrSNk=;
        b=YOCV5pYYtrla4iq4/U2odUIeqdGcXRX46gMpEADhfex89ZP5assueKIeyv9fxu+GAQ
         1mnGnHHLiQFWAfkjppZwwhUB//PgYsxryQGgVEYIzdyox+Q0VP2+7qwqGnBBpf2UiuiY
         cVShYJon2L5aEH/fDRUkXr4+vrKapStcg6un4=
In-Reply-To: <20081111105214.GA15645-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Tue, Nov 11, 2008 at 11:52 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> [ Cc:-ed workqueue/locking/suspend-race-condition experts. ]
>
> Seems like the new kernel/stop_machine.c logic has a race for the test
> sequence above. (Below is the bisected commit again, maybe the race is
> visible via email review as well.)

I try again.

I think that the test for stop_machine_data in stop_cpu() should not
have been moved from __stop_machine(). Because now cpu_online_map may
change in-between calls to stop_cpu() (if the callback tries to
online/offline CPUs), and the end result may be different.

Maybe?


Vegard
