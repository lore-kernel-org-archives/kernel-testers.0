From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: 2.6.27-rc1-git4: Reported regressions from 2.6.26
Date: Wed, 06 Aug 2008 10:38:18 +0100
Message-ID: <4899710A.60804@tuffmail.co.uk>
References: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=uR00GPojdCspsnXiSxdPBMdb7n4lDtFOgr6uxDpKhpU=;
        b=QDLHR3h5lQRjRpa7Q6Jpm3RyR10MtzcBu16dPJ6nrnJj70ro6zavBSUgjm6M7mw2xv
         TtcTrL9p3WF/cIItXtJltoxOeo7BpoCD+TY+ZhMfm16KZQK3lJVvfIDLuVF7VvMM4yAC
         hg/brgO63GQqaBujnKQiNY+xuSso3biENIpIU=
In-Reply-To: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Rafael J. Wysocki wrote:
> [Note that all of the suspend/resume regressions seem to result from the same
> couple of bugs, or even one bug, but since that has not been confirmed yet,
> they are listed separately.
> 
> Bug submitters also please note that if you CC your reports to
> kernel-testers-u79uwXL29TY76Z2rM5mHXA-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org, they will be _much_ easier to track for me
> and pretty much everybody else.]

Cool.  Will do so in future.

Sorry to be a pest, but can you explain why this address is better than
<kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>?  It's easier for me to use the latter since I 
can remember it :-).

> This message contains a list of some regressions from 2.6.26, for which there
> are no fixes in the mainline I know of.  If any of them have been fixed already,
> please let me know.

Thanks, having this list helps build my confidence when testing if anything more
is broken in rc2 :-).

Alan
