From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #29672] [regression][ALSA][hda-conexant][2.6.38-rcX] external microphone sound too quiet
Date: Sun, 17 Apr 2011 10:07:06 -0400
Message-ID: <3577387.Ms3I5Hp20k@segfault.sh0n.net>
References: <sam8u5dLkaB.A.afE.53uqNB@chimera> <IqJL5EkbqD.A.A5F.k5uqNB@chimera>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1303049229; bh=K6lAOJnWHU17AaevFCHrdL2pP8r86200YFBKB+H7Noc=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:To:Cc:Subject:Date:Message-Id:Organization:User-Agent:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type; b=1JA6TfDZEmiATGXYiM/b/k4Wgt9ebae7qsgkwttkM9DWqXPWFS3Ff4jKg4g4uOAWmnRuCOFbUh7zhiUgXPhtt5M3j4xhtWNjUACbpMZ+0iYb7Woy+Oz+WNGm2/pf42mgGkn9mulD/cY/eVDOjKr4kaZZW2CL723CqSUWPcNx8Ls=
In-Reply-To: <IqJL5EkbqD.A.A5F.k5uqNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, April 17, 2011 03:52:09 PM Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.37 and 2.6.38.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.37 and 2.6.38.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
It is continuing, using the external microphone the audio is too quiet no 
matter how loud I set it with PulseAudio.

The audio onboard Lenovo W500 laptop is: Conexant CX20561 (Hermosa)  

I have not had time to do any investigations to look at the git changes made.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29672
> Subject		: [regression][ALSA][hda-conexant][2.6.38-rcX] external 
microphone
> sound too quiet Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> Date		: 2011-02-19 6:02 (58 days old)
> Message-ID	: <474630.25335.qm-LGyaPT5kzbjzJNTqFNLFoaJ1FwRQo79cG6kzb5Gsg2M@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=129809536502092&w=2
