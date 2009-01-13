From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Tue, 13 Jan 2009 13:47:27 +0800
Message-ID: <b6a2187b0901122147o45890cd4lfb6ba7b2908e6ae7@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
	 <20090111162949.GA15338@elte.hu>
	 <200901111736.24350.borntraeger@de.ibm.com>
	 <20090111163904.GA21806@elte.hu>
	 <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
	 <20090111180714.GB15326@elte.hu>
	 <b6a2187b0901121720s1f9b12ednb76a90dcc7eddc81@mail.gmail.com>
	 <alpine.LFD.2.00.0901121807070.6528@localhost.localdomain>
	 <b6a2187b0901122028w3f85fc9aj41d7c8ac44adb2ed@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=LJDfEUzjBGKcLdbqm2fcDm7uah1HnCVg/iHiHReDJlU=;
        b=FwZP3bBlXztUESsoiZAfaTXecOkHrTguKtll+e6gBiaK8vnUBGlDYk5iGcfu+W8Y+y
         KjWMy+DRGz4UnWsGmT5BJPmla4k1L7vXhc7d11OpDXEb25fbN7JseE42YUDacNz2yZvH
         ckBLp8CXoli4TT/FmJk9sCGKenKcu4AkQgYOU=
In-Reply-To: <b6a2187b0901122028w3f85fc9aj41d7c8ac44adb2ed-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Sun, Jan 11, 2009 at 7:16 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12422
> Subject         : 2.6.28-git can't resume from str
> Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-10 1:39 (2 days old)
> References      : http://marc.info/?l=linux-kernel&m=123155157909282&w=4

Fixed by reverting a0d4922da2e4ccb0973095d8d29f36f6b1b5f703.
7503bfbae89eba07b46441a5d1594647f6b8ab7d has already been reverted in
the Linus's latest git tree.

Thanks everyone for all the help.

Jeff.
