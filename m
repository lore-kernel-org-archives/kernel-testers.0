From: "Alexander E. Patrakov" <patrakov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12406] 2.6.28 thinks that my PS/2 mouse is a touchpad
Date: Sun, 15 Feb 2009 11:14:46 +0500
Message-ID: <20090215111446.789c1f8a@home.aephome.ru>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera>
	<ROx6X68CGJG.A.Ql.E50lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=m1A+zt4LuLem6AZledBYbjzxlCe+LTezbTlsNX/IZ/8=;
        b=KSWsqIfmHT1NHQdQJ0UP9T91TK5rV4pB5ekTpo/VxftjPkJf4d60tFg4133L43lX0x
         1vgiDIau8qa7upYysYkEMNzHLOwxGj4xpLfGpcAbO0ITxEy2mbzgUiqK8o7l0QysBRvD
         MExkoXYsnAu5I1XkU26IRxtDP1FQ7LSkqraLA=
In-Reply-To: <ROx6X68CGJG.A.Ql.E50lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan Opmeer <arjan-OssVvNj1wBysTnJN9+BGXg@public.gmane.org>, Denys Vlasenko <vda.linux-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still
> should be listed and let me know (either way).

Yes, it is still a regression with a patch that is not in -stable.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12406
> Subject		: 2.6.28 thinks that my PS/2 mouse is a
> touchpad Submitter	: Alexander E. Patrakov <patrakov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-12-27 9:06 (50 days old)
> References	:
> http://marc.info/?l=linux-kernel&m=123036893817280&w=4
> Handled-By	: Arjan Opmeer <arjan-OssVvNj1wBysTnJN9+BGXg@public.gmane.org>
> Patch		:
> http://marc.info/?l=linux-kernel&m=123092147703236&w=4

-- 
Alexander E. Patrakov
