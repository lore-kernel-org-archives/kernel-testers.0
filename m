From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14265] ifconfig: page allocation failure. order:5,
	mode:0x8020 w/ e100
Date: Thu, 29 Oct 2009 00:36:53 +0100
Message-ID: <20091028233653.GA2206@bizet.domek.prywatny>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <vX3ILojF2dJ.A.P8G.Aff5KB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=1aKN2/jSK0lYUvpL54qyQBWjMjItC1gRAmoYjUXP1Sc=;
        b=fU4yTe1yEpAuNrnWukONinAocekq1QfSdGczLpHliJ4KA00lHwjRiqGNW3JDClvEZF
         NGN68X/waEkQbtbhQLxJ2UCMIBIMk5n1U2SLLURF9FWECy6Vg/5PIa4umOCratHOFUAA
         DqZz9g86wtxBq3kR6zr1ctKVq9m5hIQQkcWQ8=
Content-Disposition: inline
In-Reply-To: <vX3ILojF2dJ.A.P8G.Aff5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Mon, Oct 26, 2009 at 08:31:54PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14265
> Subject		: ifconfig: page allocation failure. order:5, mode:0x8020 w/ e100
> Submitter	: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-09-15 12:05 (42 days old)
> References	: http://marc.info/?l=linux-kernel&m=125301636509517&w=4

Bug is still present in 2.6.32-rc5.

(I'm currently testing Mel's patches.)

Thanks.
