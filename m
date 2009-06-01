From: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Mon, 1 Jun 2009 11:46:12 -0500
Message-ID: <36C1B891-5BC9-4149-AF22-58BC22AD7A3A@sgi.com>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A._pF.ZVbIKB@chimera>
Mime-Version: 1.0 (Apple Message framework v926)
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PkPeJtNB3KO.A._pF.ZVbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs mailing list <xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org>

[cc'ing the xfs mailing list]

On May 30, 2009, at 2:55 PM, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still  
> should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13375
> Subject		: Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
> Submitter	: Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>
> Date		: 2009-05-20 0:37 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=124278675503699&w=4
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux- 
> kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
