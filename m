From: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11191] 2.6.26-git8: spinlock lockup in c1e_idle()
Date: Tue, 2 Sep 2008 00:46:24 +0400
Message-ID: <20080902004624.61f39cfe@gmail.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	<N8SeMoDzuxC.A.TJH.klbuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=BzTwco5r3d+CIaeCzZff9KVB8WujL+C8NY9r5kVrB50=;
        b=oVMit5ZJI6YNiXR8921uZHqeUjtThud31FW0/riMt8xrGtk0KwK+nhvcDbY+yz78Ri
         0HXT636fUk4TsHTLz/uoPuUFnpAJhT+OcKqa3mxbztHEm4drmiupeVk6dWCP0xuux4CR
         g15t3jMv9EirnJg24Sivyz9WXOK/Mp+94jNUY=
In-Reply-To: <N8SeMoDzuxC.A.TJH.klbuIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Sat, 30 Aug 2008 21:50:13 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11191
> Subject		: 2.6.26-git8: spinlock lockup in c1e_idle()
> Submitter	: Mikhail Kshevetskiy <mikhail.kshevetskiy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-07-24 03:22 (38 days old)
> References	: http://lkml.org/lkml/2008/7/23/317
> Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> 
> 

not fixed yet
