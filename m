From: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12159] 2.6.28-rc6-git1 -- No sound produced from Intel HDA 
	ALSA driver
Date: Wed, 4 Feb 2009 08:37:17 -0500
Message-ID: <a44ae5cd0902040537i2b3e074asd13d30eec68e9749@mail.gmail.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera>
	 <CGyEB0S4BpO.A.YyD.n6YiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=lhGIJQHnZvbKsZc/wYDzZqz9YxrpNIFBr9vpiOi2aCI=;
        b=n1ydfecnO4JtpqjtU3nnja9TucBnP2CPzmiqYDxtEhfJlJfyQkJLQjaObxGk/JHYdR
         n3ABDDzXAGBF9LT1H+04PFK+iGP4kX/OmBUQVPyiFkDYYwOtNt+qIovzNSbu3LB+tLIl
         aGcPe4zKsnbNdAfoCC5a/XVqnueg/OR9DwWgI=
In-Reply-To: <CGyEB0S4BpO.A.YyD.n6YiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

This bug is fixed in Linus' tree, afaict.

On Wed, Feb 4, 2009 at 5:58 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12159
> Subject         : 2.6.28-rc6-git1 -- No sound produced from Intel HDA ALSA driver
> Submitter       : Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-11-27 20:33 (70 days old)
> References      : http://marc.info/?l=linux-kernel&m=122781805620212&w=4
> Handled-By      : Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
>
>
>
