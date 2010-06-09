From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #16122] 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
Date: Tue, 08 Jun 2010 21:52:20 -0500
Message-ID: <4C0F01E4.1030507@lwfinger.net>
References: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera> <C9Q3XEnHPeG.A.gdG.f8rDMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=myy38G00XeCyJBVNsKw0709/c9NPNPYikaxjP2rvmpc=;
        b=OKUBb0iag4PvfOWToB0X6sen165uGGqx6bDlu+sSEB2Nswa3Kz5dZwNavTHUXJxTzs
         7CXARgGYJ51HqvC4p5oNLHjMIpHrSkkV1BhvtGWLd0I7vV9j2ith5Xz5kewnuIuvcN22
         9x8dbL4F/tjUj5ODGnGLQJIThR6SkdEKOWEfM=
In-Reply-To: <C9Q3XEnHPeG.A.gdG.f8rDMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 06/08/2010 05:10 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16122
> Subject		: 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2010-06-04 13:18 (5 days old)

Still present in 2.6.35-rc2.

Larry
