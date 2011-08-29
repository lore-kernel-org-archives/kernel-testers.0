From: "Carlos R. Mafra" <crmafra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #41512] 3.1-rc2 failed s2ram: Freezing of tasks failed
 after 20.00 seconds
Date: Mon, 29 Aug 2011 08:30:50 +0200
Message-ID: <20110829063050.GA15560@Pilar.site>
References: <lx6sezwGldO.A.IhF.UBpWOB@chimera>
 <sfuyzWlorBN.A.PrF.cBpWOB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=J4Ez4WEpddcqCI5e2yzK1dHGsRdmTqR5LClb8emmVtM=;
        b=tpgWndp6o4cKR9ymlAnHmXQO+UM1m6MJ8D5CrcYhUihGhfdSlyFVWGBdhxDi0uqvst
         HZ9UpMF133zqOoAGvHC+a4iHK4Dfbdqfj7JO2zE4grNt992F/HQIzs58Fcsvz9SyTNt+
         5uwOIUvBC4Pd51oveLcQk+KoXWJmWOv4PlKlc=
Content-Disposition: inline
In-Reply-To: <sfuyzWlorBN.A.PrF.cBpWOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sun, 28 Aug 2011 at 20:30:51 +0200, Rafael J. Wysocki wrote:
> 
> The following bug entry is on the current list of known regressions
> from 3.0.  Please verify if it still should be listed and let the tracking team
> know (either way).

It didn't happen again since then (with post -rc2 kernels).


> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=41512
> Subject		: 3.1-rc2 failed s2ram: Freezing of tasks failed after 20.00 seconds
> Submitter	: Carlos R. Mafra <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-08-16 9:42 (13 days old)
> Message-ID	: <20110816094245.GA2042-VVqtEBlnRoHN0uC3ymp8PA@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=131348782017435&w=2
> 
