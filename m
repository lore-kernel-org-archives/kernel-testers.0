From: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14907] Commit "kbuild: fix bzImage build for x86" breaks
 build
Date: Sun, 10 Jan 2010 19:36:06 -0600
Message-ID: <20100111013606.GA7031@progeny.tock>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
 <omZ8aBZReyD.A.lV.kNlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=PSaVPsBy64rTc00+azwbo+fsdoB/dA86PUZ/AEHroMk=;
        b=WzXbH7u9yNPTdHN6pzIhcOpH+eYFAk4neHNLmOf9aa1r4duSlS5oEOrOFIjDYINNKl
         AaxeILvqInG57pqiuHSZ8DRxXF/tR6VGQ69rjzRLK8kPo0z0DbH6hBYzt4nlrZpKBQ+9
         vPwHVhgginoX9Nf07s46g41vs6ldUM4h2MIMw=
Content-Disposition: inline
In-Reply-To: <omZ8aBZReyD.A.lV.kNlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>, Michal Marek <mmarek-AlSwsSmVLrQ@public.gmane.org>, Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>

Rafael J. Wysocki wrote:

> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14907
> Subject		: Commit "kbuild: fix bzImage build for x86" breaks build
> Submitter	: Oliver Hartkopp <oliver-fJ+pQTUTwRTk1uMJSBkQmQ@public.gmane.org>
> Date		: 2009-12-19 19:21 (23 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4a2ff67c88211026afcbdbc190c13f705dae1b59
> References	: http://marc.info/?l=linux-kernel&m=126125050622195&w=4
> 		  http://marc.info/?l=linux-kernel&m=126114565103300&w=4
> 		  http://marc.info/?l=linux-kbuild&m=126202819526623&w=2
> Handled-By	: Jonathan Nieder <jrnieder-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://thread.gmane.org/gmane.linux.kbuild.devel/4313/focus=4319
> 		  http://patchwork.kernel.org/patch/71957/

I am using the patch without problems, but it is not in the mainline
as of v2.6.33-rc3-git3.  So please do keep the bug listed.

Thanks,
Jonathan
