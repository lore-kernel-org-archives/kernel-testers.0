From: "Carlos R. Mafra" <crmafra2@gmail.com>
Subject: Re: [Bug #14381] iwlagn lost connection after s2ram (with warnings)
Date: Mon, 26 Oct 2009 20:56:43 +0100
Message-ID: <20091026195643.GA32404@Pilar.aei.mpg.de>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
 <6dRYo8ss7vL.A.EmG.hre5KB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756550AbZJZUEl@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=tiL08Iyz99oGW9fmDlQYaW2bLAJP+3LNLXasiGPJpyM=;
        b=qq3ljTI4JhEG64J4aDKAZ8p2K0uDVvrtxTOc+Hpqcj9qwv7IS2kuOvw/Ka6bhYp09S
         bPjmHu5IWNJmKERAFywbRdC+sHe7DTzVAwjNREWlSHEiY01TKHYGu2yOKYWIB9SLEl5a
         U1uul9yWCjXnk+dHUUbiPK+AhGod+Hldq+vPw=
Content-Disposition: inline
In-Reply-To: <6dRYo8ss7vL.A.EmG.hre5KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, reinette chatre <reinette.chatre@intel.com>

On Mon 26.Oct'09 at 19:55:54 +0100, Rafael J. Wysocki wrote:
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14381
> Subject		: iwlagn lost connection after s2ram (with warnings)
> Submitter	: Carlos R. Mafra <crmafra2@gmail.com>
> Date		: 2009-10-07 14:20 (20 days old)
> References	: http://marc.info/?l=linux-kernel&m=125492569119947&w=4

Somehow this problem did not happen again for 2 weeks or so (ie since
a few days after I reported it) and I suspend to RAM around ~4 times
a day. 

The problem was not deterministic, so I am not sure if we should close it now.
But in case you close it, I can report again if it happens in the future.
