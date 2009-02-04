From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12414] iwl4965 cannot use "ap auto" on latest 2.6.28/29?
Date: Thu, 5 Feb 2009 03:15:29 +0800
Message-ID: <b6a2187b0902041115u130fcfe7ha1612e2e2fa1ec36@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.zq.WwYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=XDA/jXdG1ZI//WSwonWkOXb4ZLTuxG3oavCrkBEUYzo=;
        b=l9Q1VLJxtOSzhnce16i/Ojuw3nbIt2hmbdpFmb8TrEOKZ76RWnELMtXZIpXWC99peF
         eIJqBIM5jHt+T8L2Z0mj73oHyfLt8nzH78YfhhMj1+cBlDnIbU3QykOL4SSH7xZx9i8p
         KL7WuCSD49FL9HGcb8lVhe0VQbvsJTtQj/mVk=
In-Reply-To: <pWZw1SZjMCH.A.zq.WwYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Feb 4, 2009 at 6:23 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12414
> Subject         : iwl4965 cannot use "ap auto" on latest 2.6.28/29?
> Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-05 4:13 (31 days old)
> References      : http://marc.info/?l=linux-kernel&m=123112882127823&w=4

Latest linux git pull seems to behave slightly better. Restarting the
interface a few times fixes the problem 70% of the time. The rest of
the time, it can't associate with the AP.

Jeff.
