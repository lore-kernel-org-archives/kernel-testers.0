From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable
 to enumerate USB port" - bisected to commit 3df7169e
Date: Thu, 02 Dec 2010 20:44:58 -0600
Message-ID: <4CF859AA.8010505@lwfinger.net>
References: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera> <gUkHV_Vc3aE.A.qi.gzC-MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=U5V4GykYcPRzdqDZ+aMCkFhIxTC73Pg/SkRgd4lITg4=;
        b=YW78DW5IrIGmf1youn4vpLqxtLUNbCyKEgI1o985kIh4XyRzVSDIhw/eULDS3GiTC9
         gPw7ifeYG3zhO7a6iqWipWxab2bBIbnF+gVh1cclT4PdLuzst0y3LPULNhUSzUlVVQWT
         CBl1MbcUj4F99E8nFnCorRdV6NprBPG58Q5vw=
In-Reply-To: <gUkHV_Vc3aE.A.qi.gzC-MB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

On 12/02/2010 05:41 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22562
> Subject		: Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Date		: 2010-11-02 22:32 (31 days old)
> First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
> Message-ID	: <4CD09166.4060202-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2

Still present in 2.6.37-rc4. The box with the problem has been repaired and I
can now debug the problem again. Any hints would be appreciated.

Larry
