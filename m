From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #22672] Regression in 2.6.37-rc1 for Intel 945 Graphics
 Adapter - bisected to commit e9e331a
Date: Wed, 29 Dec 2010 18:32:08 -0600
Message-ID: <4D1BD308.4030103@lwfinger.net>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.F4G.VA8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=crX6PkOCVeR2T+jFxhejzqCNFlaOIWt5tAUuO3lj+8s=;
        b=GZQP25Yh/RsCJSrBch0iifxsmoOuBONUkxlh1sqSeN/4d1i0YBAcWYpSGUK3mBroBE
         x2t/PdyRSt5a7MrsnQMiFwuMRAT8yaT+27mIR5Dmu9Lurk+DYiQkf7lvhgqKJn+p25V6
         rUaaIcyj4jSlHYToLMiXVwoKpdEBnygSRIyuo=
In-Reply-To: <sV7shrPOroO.A.F4G.VA8GNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On 12/29/2010 05:06 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22672
> Subject		: Regression in 2.6.37-rc1 for Intel 945 Graphics Adapter - bisected to commit e9e331a
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2010-11-11 01:56 (49 days old)
> References	: https://bugs.freedesktop.org/show_bug.cgi?id=31803
> 		  http://marc.info/?l=linux-kernel&m=128944001311444&w=2
> 		  http://www.mail-archive.com/intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org/msg02235.html
> Patch		: https://patchwork.kernel.org/patch/359472/
> 		  https://patchwork.kernel.org/patch/359502/

Neither 2.6.37-rc8 nor the patches listed above fix my system.

Larry
