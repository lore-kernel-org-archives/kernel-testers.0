From: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13374] reiserfs blocked for more than 120secs
Date: Wed, 19 Aug 2009 10:54:36 +0900
Message-ID: <4A8B5B5C.3050906@gmail.com>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera> <200908122315.09420.rjw@sisk.pl> <4A8AE52F.6030606@t-online.de> <200908182112.53486.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=T8SmPlwHvlhBl/B04JV1u2EQo/oEVzs5Lwz4Izc2uxY=;
        b=DYpwz04hlTakCtxz3jTJGpHw2ZAeWYE1LDQmKTcwWvJ/WPpTPHiJvSMXjrGVJ7AJH9
         IC/dZ/R1ifWzfR53lTKe5v2mZsIRy/05yXlNNYy+QOghhrcqCUfOK6cOAhcB0BflF2FG
         xSqkCeq7mHwhj5/swZTV11cQY7fYYhB+xh8X8=
In-Reply-To: <200908182112.53486.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>, =?ISO-8859-2?Q?Fr=E9d=E9ri?= =?ISO-8859-2?Q?c_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>

Hello,

Rafael J. Wysocki wrote:
> Unfortunately, I don't have much experience with debugging issues of
> this kind.  Perhaps Tejun will have some hints (CC added)?

Eh... I don't have much experience either and from the reported
information I can't tell much.  The question would be what the thread
which is holding the lock was doing and whether it traces down to IO
layer.  So, as Jeff said, we'll need sysrq-t output to tell what's
going on.  The current trace only reveals the victim not the offender.

Thanks.

-- 
tejun
