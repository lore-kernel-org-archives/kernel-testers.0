From: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #16172] 2.6.25-rc1 ahci regression
Date: Wed, 23 Jun 2010 16:37:02 -0400
Message-ID: <4C22706E.9020005@garzik.org>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera> <W8JfMs9cZw.A.6TG.fNpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=++dn/USiOofBUmMpNKFxc0TWiZTYYbjb7GqZ1ZzGRks=;
        b=f4cfSiBpzbY+93bcmSFdFTdlEhnxcKuoEpPizyCPsOA6ZOmbmIHLe+VaXjjUz6Hp/u
         xQIWk/BoBNP1Cu8UNUWyBsAFRuSL2MpSjSatFlZY2YXepzTPUon1B9MtqTRPU2TStUsf
         1xSlZBv3bjmR/roBOTpP9h1AoHhbRkB83vwkE=
In-Reply-To: <W8JfMs9cZw.A.6TG.fNpHMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Anton Vorontsov <avorontsov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Luming Yu <luming.yu-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 06/20/2010 06:17 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16172
> Subject		: 2.6.25-rc1 ahci regression
> Submitter	: Luming Yu<luming.yu-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-06-03 7:02 (18 days old)
> First-Bad-Commit: http://git.kernel.org/linus/365cfa1ed5a36f9bcb9f64c9f0f52155af2e9fef
> Message-ID	:<AANLkTikWak8i-Kaj-e-EUFWE66tfMmp2UPhGJCKkK1zK-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>>
> References	: http://marc.info/?l=linux-kernel&m=127554855724361&w=2

As noted in the bug, this is IMO a problem of certain userlands not 
properly digesting module dependencies...

