From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14270] Cannot boot on a PIII Celeron
Date: Fri, 2 Oct 2009 12:30:17 +0400
Message-ID: <aa79d98a0910020130p4d3c5b5fh9597ea435db7f872@mail.gmail.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	 <COE24pZSBH.A.7sH.xMTxKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=K65R/6p2u6x/VlT5m8mRsl220ywxLTMfY7r4l+vRxL0=;
        b=WHOjdEOslsMJQrGqYKPQcNWHwBW/Qd+iYgXpTCs15nXVut0HFJZhG4pzI1RoQT9ywL
         THf9IOunXvJrK8bCMkD8wgzFTL9jkbf/hz7wv0dcMhpWmz5ln1cLMffy2GYevTih5pTq
         Ey1AbH01Mghj9F1eB06TOVMk8X+EsEnXCb+xc=
In-Reply-To: <COE24pZSBH.A.7sH.xMTxKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>

On 10/1/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
>

Michael has been asked to bisect it (if possible). I cant reproduce it
in kvm unfortunately.

>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14270
> Subject		: Cannot boot on a PIII Celeron
> Submitter	: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
> Date		: 2009-09-28 15:26 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=125415160524110&w=4
>
>
>
