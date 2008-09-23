From: Andy Wettstein <ajw1980-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11568] spontaneous reboot on resume with 2.6.27
Date: Mon, 22 Sep 2008 21:13:51 -0500
Message-ID: <20080923021351.GA18533@bob>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.DYG.N0q1IB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=wbJgZGjitaScslk/Gv/MbghovFSKYlS0EMMvYsmnqSQ=;
        b=fvTYhDYlc3nz4XH5IhDWBgffWJDjqQazE8hHh972P++EVCujbIidzV1R7EcySXd2yp
         JtYU5etj8Zpf0KNYBYQNoO16DG+ZbE/OzSZkgh1LWQ/bQ+zPPTMteVsyJxFbAj/Gztqt
         s+bzyP8Cm369MRBLa4cHE5fKav2cPGKB+3hZI=
Content-Disposition: inline
In-Reply-To: <7lIhZC4hCxE.A.DYG.N0q1IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Sep 21, 2008 at 08:54:21PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11568
> Subject		: spontaneous reboot on resume with 2.6.27
> Submitter	: Andy Wettstein <ajw1980-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-09-14 20:00 (8 days old)

Just verified it is still a problem with 2.6.27-rc7.
