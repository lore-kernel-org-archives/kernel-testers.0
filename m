From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 9 Oct 2009 23:59:12 +0400
Message-ID: <20091009195912.GI5311@lenovo>
References: <4ACF460E.7000901@msgid.tls.msk.ru> <20091009145825.GE5311@lenovo> <4ACF9184.9040104@msgid.tls.msk.ru>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=eoBk+TVKNBq9udz19uSy1ySwuk4Wn3fmVyIeBEmi1zE=;
        b=F/AA9n7mYIbKc/xsEZg/QF92Xu0+EGHiSRD7XcDejBNQi1HQ8jiRiJkCEQaeW8WPDN
         Wyi06dfVmhJUQN7BTxmWOLjfdAFkVY5MxIlWRg7tzJRnjToA7gRe76YrB/7/SObk6Ip+
         rNTx8qwStaX6dLKo7udSrnLScg1eSdnb62JXo=
Content-Disposition: inline
In-Reply-To: <4ACF9184.9040104-Gdu+ltImwkhes2APU0mLOQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
Cc: Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

[Michael Tokarev - Fri, Oct 09, 2009 at 11:39:48PM +0400]
> Ok, some more to this.
>
> It turns out dash's built-in echo command interprets \nnn octal
> sequences by default, and there's no way to turn that off.  So,
> for example, sed-zoffset command from arch/x86/boot/Makefile
> (which includes \1 \2 etc substitutions for sed), when echoed
> in verbose mode (V=1), produces.. interesting characters (with
> ascii code 1 and 2).
>
> It's not practival to replace V=1's echo with /bin/echo I think.
>
> So I'd say it's not a bug in the build system after all, but
> a bug in dash.  Well, at least this expanding-by-default didn't
> trigger another very-difficult-to-find bug (hopefully), but it
> has good potential.
>
> I'll file a bug report against dash.
>
> /mjt
>

OK, thanks Michael!

	-- Cyrill
