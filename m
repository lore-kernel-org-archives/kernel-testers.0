From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #11553] Strange looking line from "ps aux"
Date: Sat, 13 Sep 2008 09:51:38 +0100
Message-ID: <48CB7F1A.7080201@tuffmail.co.uk>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.o2F.ubsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=3X1u/EpqJCmHOMMuy2tHDltEKdChgVOXZ8MJH1EmBgc=;
        b=Oc4Ghh/2nz4y6gua+ada7PlwP4Aae0zlVzT2KMEcHQaawyQkJE98SviXbv32HZ2unf
         m+h6m00YJhqoDuPziWv+qx0o7psYEEFumYHA20j08y7oL09HWig+ZkdnCYx9sI96eKF4
         msJWdeRDfLCqK3kNcQ6sJ3lboekPHN8Re65D4=
In-Reply-To: <SpS7rta8n4.A.o2F.ubsyIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?UTF-8?B?Um9nw6lyaW8gQnJpdG8=?= <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me k=
now
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11553
> Subject		: Strange looking line from "ps aux"
> Submitter	: Rog=C3=A9rio Brito <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>
> Date		: 2008-09-11 17:43 (2 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D122115506018275&w=
=3D4
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-test=
ers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>  =20

Isn't this another instance of
<http://bugzilla.kernel.org/show_bug.cgi?id=3D11209>?

If you can try 2.6.27-rc6, that should fix it.

Alan
