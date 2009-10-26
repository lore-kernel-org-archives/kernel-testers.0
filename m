From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14474] restorecond going crazy on 2.6.31.4 - inotify 
	regression?
Date: Mon, 26 Oct 2009 17:48:21 -0600
Message-ID: <51f3faa70910261648h242a9a2dp42cdf554a9eb1342@mail.gmail.com>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
	 <vX3ILojF2dJ.A.H8F.Yef5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=dY4ttYv0RNmOgCOdGC7BBmDtbn8yO2efLwlsS5g6GwQ=;
        b=cavu0MgniJjT3BbH9gOI1dZqxOyvo3XLAGQxaJ39PpXdv6zE1AE4l+3VX13XIwxIMp
         o5nRf/UFVPDYnrnClfwmuWtpQ4gpz4YVJ1f7mRt0lJw4YaSgF3bT66lPXl4knAmSz8Bu
         lLpfRNO0/+B0qG1fPwn4sLEaNFu2OBploTnbs=
In-Reply-To: <vX3ILojF2dJ.A.H8F.Yef5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Oct 26, 2009 at 1:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14474
> Subject =A0 =A0 =A0 =A0 : restorecond going crazy on 2.6.31.4 - inoti=
fy regression?
> Submitter =A0 =A0 =A0 : Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-10-16 0:03 (11 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125565=
159520489&w=3D4

This is definitely reproducible on 2.6.31.4 on CentOS 5.4, I'll likely
try 2.6.31.5 shortly, but it doesn't seem like any of the 2.6.31.5
patches touch inotify..
