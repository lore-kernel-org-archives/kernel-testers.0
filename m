From: "Tomas M." <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13836] suspend script fails, related to stdout?
Date: Wed, 26 Aug 2009 08:10:48 -0300
Message-ID: <4A951838.4090803@gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.es.4tGlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=IAlZ7J/0qBd/UzGhIcrKseMKYplFFI+BNzfko6EVOBY=;
        b=DdNBlWuC88sGuGpa1C8T2STLsOKcTFsrW365Y1cXdkkbd72IuwTzMwEQhjLArYGVkH
         Or/IG2XuPta/I016M+8Iyyw+6amkkohlpnMxQlMbYOKiOqiB1kUTjJr1jd9v5o+1x+Xa
         +RnWJ7qveUIr4Ipg92tihfwdbpIjdRZPLoUnY=
In-Reply-To: <_yaHeGjHEzG.A.es.4tGlKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

yes, this is still the case, the same script (netcfg from archlinux) 
fails during boot too.

Rafael J. Wysocki wrote:

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13836
Subject		: suspend script fails, related to stdout?
Submitter	: Tomas M. <tmezzadra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-07-17 21:24 (40 days old)
References	: http://marc.info/?l=linux-kernel&m=124785853811667&w=4


