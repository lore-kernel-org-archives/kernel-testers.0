From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #22672] Regression in 2.6.37-rc1 for Intel 945 Graphics
 Adapter - bisected to commit e9e331a
Date: Sun, 19 Dec 2010 10:25:35 -0600
Message-ID: <4D0E31FF.9060104@lwfinger.net>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera> <6Ue85L6pKCJ.A.NVF.qffDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=IewxF6pW1RV0PhTpuvHXXIFrM7fgup08JRWkkcM2AkI=;
        b=mzvL3Ntt2wRoYupOaxIv7lHZEhHHE0XNpIlApUyi9BYOMvU11cBltyL/RGwBtuLJXT
         RqgC8iKODGTiX2TtVIU+V06z/HV5vhXHMa+tF4I0K9UUOZQsFI8C15ZFwbSxVZhNIjoz
         cws+oKsntZnpw2YoZXFwJi558JAjaxEhpPvM8=
In-Reply-To: <6Ue85L6pKCJ.A.NVF.qffDNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On 12/19/2010 06:34 AM, Rafael J. Wysocki wrote:
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
> Date		: 2010-11-11 01:56 (39 days old)
> References	: https://bugs.freedesktop.org/show_bug.cgi?id=31803
> 		  http://marc.info/?l=linux-kernel&m=128944001311444&w=2
> 		  http://www.mail-archive.com/intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org/msg02235.html
> Patch		: https://patchwork.kernel.org/patch/359472/
> 		  https://patchwork.kernel.org/patch/359502/

The problem is still present in 2.6.37-rc6.
