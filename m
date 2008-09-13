From: "Justin Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #11552] Disabling IRQ #23
Date: Fri, 12 Sep 2008 20:24:48 -0700
Message-ID: <dd18b0c30809122024g7fc2f77cpc3dedd8d7d1053a5@mail.gmail.com>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.h8F.xbsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757871AbYIMDZB@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=GbvyQP+Kh4j859L4kGPNP1Xx8qNrkspwT8KSSdqfWBM=;
        b=aYyXjMIpmO2/IFI3P5zsxmEVCL6ESUjwE0lECo3CVYjryGjA0JvpLNHrt8JxGDuoFD
         hO1SbE6x7pHQVQZbE8+Qfds3OqWBE6ySuaq42iuDQqB85AMgcfHlcpkMHXisVnVhBOqe
         DqtbiGUGSkOf99KijVJuUDNXenLsLg2VYfsX8=
In-Reply-To: <SpS7rta8n4.A.h8F.xbsyIB@albercik>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Yinghai Lu <yhlu.kernel@gmail.com>

On Fri, Sep 12, 2008 at 12:06 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11552
> Subject         : Disabling IRQ #23
> Submitter       : Justin Mattock <justinmattock@gmail.com>
> Date            : 2008-09-09 19:08 (4 days old)
> References      : http://marc.info/?l=linux-kernel&m=122098735230906&w=4
>                  http://marc.info/?l=linux-kernel&m=122107367715361&w=4
> Handled-By      : Yinghai Lu <yhlu.kernel@gmail.com>
>
>
>

yeah I think it would be a good idea.
something to do with ehci_hcd, i.g. if I blacklist
ehci_hcd  Disabling IRQ#23 message doesnt seem to be showing up.

-- 
Justin P. Mattock
