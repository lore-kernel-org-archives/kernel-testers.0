From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #37232] [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
Date: Mon, 27 Jun 2011 19:37:34 -0400
Message-ID: <2202361.0SXGgnGr4r@segfault.sh0n.net>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera> <XWjMN7gBoXK.A.MrD.8Z6BOB@chimera>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1309217857; bh=51eYS8b1KVmr1k/kxkYAdCwgdXo2fDVfbd/x+assWME=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:To:Cc:Subject:Date:Message-ID:Organization:User-Agent:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type; b=Tp4V/ezseMnRGHwdCb35KnjAv/vPZ9L7iwsoTtHuOuVcyiHVdd04lfvwqSV+F0kgG3PHAVFxQyNmCwCxVWjBk6rozpNKE3nAzytQepDMO4svOYBfEDGfqEqR40/PA7N1cp9LLCqCJ0SkYpo4MzvKaALqaMt1QTMqMyxAjTFBdsw=
In-Reply-To: <XWjMN7gBoXK.A.MrD.8Z6BOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sunday, June 26, 2011 11:23:44 PM Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.39.  Please verify if it still should be listed and let the
> tracking team know (either way).
> 
This continues in -rc4, although Fedora has a patch to try to fix some DMAR 
errors, it doesn't seem to work for me.

03:00.0 Network controller: Intel Corporation PRO/Wireless 5100 AGN [Shiloh] 
Network Connection

[ 1046.002195] DMAR:[DMA Write] Request device [03:00.0] fault addr ffda6000 
[ 1046.002198] DMAR:[fault reason 05] PTE Write access is not set
[ 1048.189224] DRHD: handling fault status reg 2
[ 1048.189240] DMAR:[DMA Write] Request device [03:00.0] fault addr ffd94000 
[ 1048.189244] DMAR:[fault reason 05] PTE Write access is not set

$ uname -a
Linux segfault.sh0n.net 3.0-0.rc4.git0.2.fc16.x86_64 #1 SMP Wed Jun 22 
16:27:16 UTC 2011 x86_64 x86_64 x

Perhaps someone from Intel can comment on why this broke recently? It's not 
causing me issues, just noise in logs/dmesg.

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37232
> Subject		: [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) 
for
> reason a1 on CPU 0 Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> Date		: 2011-06-03 4:56 (24 days old)
> Message-ID	: <4478124.OuFNgaPiHS-RRHT56Q3PSMGBMjmSbuoWl6hYfS7NtTn@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=130707737616116&w=2
