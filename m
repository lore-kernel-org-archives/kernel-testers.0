From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11388] 2.6.27-rc3 warns about MTRR range; only 3 of 16gb of memory is usable
Date: Sat, 30 Aug 2008 14:29:47 -0700
Message-ID: <86802c440808301429u2a719571raf0d8001a89a1388@mail.gmail.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	 <N8SeMoDzuxC.A.8uE.libuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=RBmWx1pbxu09rPBGu9TbPy8zSzprdSjdM2VPdy/y9Xs=;
        b=vHnoxDCwZtjlcUPwih6rpiqcsGJzpJR3lrLRgdpgt0JR5A8wzDJsXMkbjwYgxBnu7Z
         mz62D1rgCL5SMPQs8HGR4PHweS9OpQoDGxVotqLEazt5iMcwshojcR5X8Zx0X+kqu9/c
         fETO9hRX+sMyH9g8pUVKX0fMpJ4aJrwJFKW5U=
In-Reply-To: <N8SeMoDzuxC.A.8uE.libuIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>

On Sat, Aug 30, 2008 at 12:50 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11388
> Subject         : 2.6.27-rc3 warns about MTRR range; only 3 of 16gb of memory is usable
> Submitter       : Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>
> Date            : 2008-08-20 17:38 (11 days old)
>
>
>

this should be closed

commit	38cc1c3df77c1bb739a4766788eb9fa49f16ffdf
x86: work around MTRR mask setting

fixed it.

YH
