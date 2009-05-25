From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #13125] active uvcvideo breaks over suspend
Date: Mon, 25 May 2009 10:56:41 +0100
Message-ID: <4A1A6B59.2030009@tuffmail.co.uk>
References: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera> <uSztiUhmDDC.A.B-B.0-bGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=9aahRQqT5eOFsGOuCJzGFm9IsLulGHdQSlsrCHw9IHo=;
        b=D8ferZvkFcXN43rBdlfmJ7igJrZ0xxQyBc4koNzCCKQ23U9x5gJoTS/5n5d9oKOGgQ
         b1cmaXi4VJN/MPutxXj2zQ2SzXVzK7gE/9KIriakI/uVbUcXARQvcyxP660HDS5kG8Wp
         nIYfgQgYt6u/nxcB7n3i088rBYVn0j1dgFzT0=
In-Reply-To: <uSztiUhmDDC.A.B-B.0-bGKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Laurent Pinchart <laurent.pinchart-AgBVmzD5pcezQB+pC5nmwQ@public.gmane.org>, Ming Lei <tom.leiming-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13125
> Subject		: active uvcvideo breaks over suspend
> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Date		: 2009-04-15 10:12 (40 days old)
> References	: http://marc.info/?l=linux-kernel&m=123979009508840&w=4
> Handled-By	: Ming Lei <tom.leiming-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://lkml.org/lkml/2009/4/18/5
>   

Seems to be fixed in RC7, thanks.
