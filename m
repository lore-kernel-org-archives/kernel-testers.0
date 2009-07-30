From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Thu, 30 Jul 2009 15:16:17 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907301514510.18807@chino.kir.corp.google.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.qoF.sWObKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248992182; bh=Jq/DQco4e1iVmVrpU1kDl/T4VJ4=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=qF1YrTWkGIW7pxPVvhfXaj5+YgRKFhV
	/QGMcS4z1UQPIATvqCwJrZNI+Wkeju69Ru8DABtI8Qw1VSdNnnVDEZw==
In-Reply-To: <H5-1lZIIeYK.A.qoF.sWObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

On Sun, 26 Jul 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13780
> Subject		: NULL pointer dereference loading powernowk8
> Submitter	: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
> Date		: 2009-07-15 18:00 (12 days old)
> 

powernowk8_cpu_init() has since been largely modified for cpumask changes 
commit 1ff6e97f1d993dff2f9b6f4a9173687370660232.  

Kurt, could you try 2.6.31-rc4?  If it still hits a bug, please post the 
dmesg and your .config.
