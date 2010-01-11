From: Marc Dionne <marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15037] BUG during shutdown - bisected to commit e2912009
Date: Mon, 11 Jan 2010 08:12:09 -0500
Message-ID: <6041d2001001110512p58e84103n53cf3729b28a5313@mail.gmail.com>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
	 <omZ8aBZReyD.A.0FG.xMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=9vOj7g83pV1JRw/516Qk8sctyUk0hFayqyOjkGmTnWo=;
        b=b34mZ3kMzajZLcGxxNBGIv5gMF3s3ZvwVZckxylq1yZ5G3gwv/mYPwLT/9sPtUeieg
         dgwc5AE8OujktzfzxTE9XQqjl3kZ2zfipI1+q+oTRfedjjEyF2eZT50JpIX7fxpXX7Ib
         L8R0JTL6P8alE88WsPI1BACYkCPvsw0ACgBNU=
In-Reply-To: <omZ8aBZReyD.A.0FG.xMlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Xiaotian Feng <dfeng-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Sun, Jan 10, 2010 at 5:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15037
> Subject =A0 =A0 =A0 =A0 : BUG during shutdown - bisected to commit e2=
912009
> Submitter =A0 =A0 =A0 : Marc Dionne <marc.c.dionne-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-01-02 0:27 (9 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126239=
207631034&w=3D4
> Handled-By =A0 =A0 =A0: Xiaotian Feng <dfeng-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Patch =A0 =A0 =A0 =A0 =A0 : http://patchwork.kernel.org/patch/71537/

I verified that the BUG still occurs with current git.
The referenced patch does fix the issue for me, but it hasn't made its
way into mainline yet.

Thanks,
Marc
