From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #14538] Unable to associate with AP after resume since 2.6.32-rc6
Date: Tue, 29 Dec 2009 09:42:22 -0600
Message-ID: <4B3A235E.2020908@lwfinger.net>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.pSE.3xhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753320AbZL2Pme@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=5AupMHilOPVdn5adzIqamPjo/Apkc+b2f4E3EvZS8UE=;
        b=CdQi5W4uTpyDWcS8SeTIS40hrdada/SYKOyw23rVLs1o3uo54FdpRRMMFPRGYz5w47
         NH/wATNbPQM0CNaINXUXG1m8sLqB4hSBNLTgvI5Y2qtZQuPH4mKgB/QDMLvi2CnXdM4H
         4j5fe25xGVp3SWCfFQmnc4MNvSmMXbOjW9Jrg=
In-Reply-To: <srmJ8vMxKPH.A.pSE.3xhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Christian Casteyde <casteyde.christian@free.fr>, "John W. Linville" <linville@tuxdriver.com>

On 12/29/2009 09:28 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14538
> Subject		: Unable to associate with AP after resume since 2.6.32-rc6
> Submitter	: Christian Casteyde <casteyde.christian@free.fr>
> Date		: 2009-11-03 22:07 (57 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d50bae33d1358b909ade05ae121d83d3a60ab63f

The patch to fix this bug has been sent to GregKH for inclusion in 2.6.32.Y and
the Bug is changed to "RESOLVED".

Larry
