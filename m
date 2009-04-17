From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13106] 2.6.30-rc1: intel 3945 no wireless
Date: Thu, 16 Apr 2009 19:53:52 -0500
Message-ID: <49E7D320.3080900@lwfinger.net>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.sp.Zw85JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1239929649; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=90y9nmEvjIatWzKXMZvdKPSR6nvJxpOuUvnylJXIunw=; b=VQk
     9Bizwj4t9nOeJflCD7S6VruEvislLby5pAR75c+daBQEGwsPjapaDApQ+oJBj9mNPv1
     A3DzeCF74hmdrCUQ==
In-Reply-To: <nY3-4PrO6XH.A.sp.Zw85JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "2.6.30-rc1: intel 3945 no wireless"@ogre.sisk.pl

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13106
> Subject		: 2.6.30-rc1: intel 3945 no wireless
> Submitter	: 2.6.30-rc1: intel 3945 no wireless
> Date		: 2009-04-08 5:36 (9 days old)
> References	: http://marc.info/?l=linux-kernel&m=123916905605534&w=4

That regression was fixed by Herbert Xu's commit 97c18e2c. It should no longer
be listed.

Larry
