From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14265] ifconfig: page allocation failure. order:5,
	mode:0x8020 w/ e100
Date: Tue, 17 Nov 2009 01:09:11 +0100
Message-ID: <20091117000911.GA2421@bizet.domek.prywatny>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera> <OWmO9uyC1hM.A.loC.CodALB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=RaOODHbz7MmtKml2umGoojFnjBNLwQWcm5WWUCtLHLA=;
        b=Og/9cdoeEFz9cJmiPGO+1E7W/iF34GyIb8+MHWSMR3kB27QZhiJjvQrDnEG1hjihFv
         UL8fiPyN/wuBoqTzO9TQYmAwp78F8lh/GhQycpi3z7pDuPSWEkqLybtgcEAws3zYqVlb
         5dwNqGSnFEjqHXBK08Yx0I2p/bqKIZuxzFANk=
Content-Disposition: inline
In-Reply-To: <OWmO9uyC1hM.A.loC.CodALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Tue, Nov 17, 2009 at 12:01:19AM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14265
> Subject		: ifconfig: page allocation failure. order:5, mode:0x8020 w/ e100
> Submitter	: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-09-15 12:05 (63 days old)
> References	: http://marc.info/?l=linux-kernel&m=125301636509517&w=4

Bug is still present in 2.6.32-rc7.

Thanks.
