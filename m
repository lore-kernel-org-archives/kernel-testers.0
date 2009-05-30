From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13374] reiserfs blocked for more than 120secs
Date: Sun, 31 May 2009 01:04:10 +0200
Message-ID: <20090530230408.GC8739@nowhere>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <LEcEO2518_I.A.MgD.wIbIKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=1I0JQjmHcWIha2HILptB576u6V9gHu+2MgHRysh6x+Y=;
        b=hL64BzSrUNtlie1plQGoEuyspWrsebbgx2PCdWCme4+zCvOyR9edZTlmHPZ9ynroNh
         ZT6dRg6QGIc7OeHGJmgPBYY0m8ZevD1tYB9QG/yiluRq9x2h6Pi32dWsmbWwyb0y/pfl
         05dlL1H/4ax0ApyWFVDKkuV4x8yxjw9Pj0c7E=
Content-Disposition: inline
In-Reply-To: <LEcEO2518_I.A.MgD.wIbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>

On Sat, May 30, 2009 at 09:37:36PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13374
> Subject		: reiserfs blocked for more than 120secs
> Submitter	: Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
> Date		: 2009-05-23 8:52 (8 days old)
> References	: http://marc.info/?l=linux-kernel&m=124306880410811&w=4
> 
> 


Trenton D. Adams has reported something very similar for -rc3:

http://lkml.org/lkml/2009/5/29/389

Someone holds the j_commit_mutex but never release it...

(Adding Jeff Mahoney in cc )
