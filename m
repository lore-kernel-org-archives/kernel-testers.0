From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #16505] 2.6.34.2 breaks b43
Date: Sun, 29 Aug 2010 19:41:16 -0500
Message-ID: <4C7AFE2C.1080204@lwfinger.net>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.h7B.DdueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=iytYHuyr7q9Zd7RATbwq4W7cc09BqWbKQF7dK2ucrUo=;
        b=An34/f9N7LolXSq8scNB2YowEPNdzAI/yTXXZopP7yDzFAGfMNbxx0aS54l11MUDQt
         WKVi38gU9N/ju9ZTBrsvpnC8n/FbPhU8ZaVqm2nqZlr1slC2tzEGfAlql6Bgv7mdTuZ3
         4Fu961FVtxH7wTT83aN/ytzvP8SCF53EYdVYs=
In-Reply-To: <ByD_7B96czP.A.h7B.DdueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, archman <spermmail001-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>

On 08/29/2010 06:13 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16505
> Subject		: 2.6.34.2 breaks b43
> Submitter	: archman <spermmail001-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> Date		: 2010-08-03 23:53 (27 days old)
> Handled-By	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=27335

This one was fixed in 2.6.34.3. Mainline was OK - only the patches to stable
were affected. The bug should be closed.

Larry
