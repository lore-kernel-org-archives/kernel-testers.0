From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #11178] Secondary hard drive fails during both hibernation
 and resume.
Date: Sun, 03 Aug 2008 09:36:37 +0100
Message-ID: <48956E15.6070409@tuffmail.co.uk>
References: <cbItfVMShGI.A.olC.UMLlIB@albercik> <5ZeQ4vXWqRC.A.q2E.4NLlIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=qdsPdntr3sMYKjFCn+VdusTnRkgL7jas6+JzxYOQMJM=;
        b=RXTkIB5rHeXx6X7L52EARPd+AbvwyssnzObq+qswOaGWKjvHrgNXIXF6Dkzr6udS82
         sZlgxxA61jLAqVDBeHZAmj6ZXjlmEKCeCofNDIf3HR8ThraIDGw16Br7olhLwgigBzOi
         NOmfQTqOJ6lFkHV/O7ADv5u/UaG77f3Ha3vMI=
In-Reply-To: <5ZeQ4vXWqRC.A.q2E.4NLlIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Matthew Wilcox <matthew-Ztpu424NOJ8@public.gmane.org>, Matthew Wilcox <willy-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed
> and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11178
> Subject		: Secondary hard drive fails during both hibernation and resume.
> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Date		: 2008-07-30 04:53 (4 days old)
> Handled-By	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=17043&action=view
>   
Please keep listed.

The problem and patch are recently confirmed by Hugh Dickins (on LKML)
and Dionisus Torimens (bugzilla duplicate).

Ta
Alan
