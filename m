From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable
 to enumerate USB port" - bisected to commit 3df7169e
Date: Sun, 19 Dec 2010 10:07:51 -0600
Message-ID: <4D0E2DD7.4060607@lwfinger.net>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera> <6Ue85L6pKCJ.A.MoF.2ffDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ydA3ZIhsKt65pLKW2w/A1GCoWB/SBq/CXTP+/IohI/A=;
        b=OB9NMJyMoB5g14GJfy2qjh7DwY5X1UbOXrW7N+wFtUVRrCHY6OHDQyta7AHwAlk/mD
         6AhqOU9NWdXTfckrqGgzm1KLuC3dSM1WAs+5ZoqDybRYeAPmVwRsdZ9lPd4Dy+ebImGt
         o6GtPyQQETj8n1IisVofAOZ97PSQaSWVzXHZo=
In-Reply-To: <6Ue85L6pKCJ.A.MoF.2ffDNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

On 12/19/2010 06:34 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22562
> Subject		: Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2010-11-02 22:32 (48 days old)
> First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
> Message-ID	: <4CD09166.4060202-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2

Yes, this regression is still present in 2.6.37-rc6. I'm trying to debug this
with very little success.

Larry
