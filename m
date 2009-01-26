From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Rocks-Discuss] hdb: status error: error=0x40 <3>{
 UncorrectableError }
Date: Mon, 26 Jan 2009 12:02:32 +0000
Message-ID: <20090126120232.516cd319@lxorguk.ukuu.org.uk>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
	<497CD30D.80203@tmr.com>
	<3f9a31f40901251310g38ecfe61t97e119533215d271@mail.gmail.com>
	<200901252249.17410.bzolnier@gmail.com>
	<3f9a31f40901252031l3bb0ec39nd077ff8f13df73bd@mail.gmail.com>
	<51ac1bba0901252130t408ab568k3b156e130f140a24@mail.gmail.com>
	<A2A0D2B1-F9AB-4CB2-AFB1-F341ADBAB959@usgs.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <A2A0D2B1-F9AB-4CB2-AFB1-F341ADBAB959-ND2aQwooo08@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Larry Baker <baker-ND2aQwooo08@public.gmane.org>
Cc: Discussion of Rocks Clusters <npaci-rocks-discussion-8ZGgPXq8l90@public.gmane.org>, Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, greg.bruno-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, mason.katz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Sun, 25 Jan 2009 22:25:59 -0800
Larry Baker <baker-ND2aQwooo08@public.gmane.org> wrote:

> Try a different, preferably new, cable.  Use an 80 conductor high- 
> speed cable if you can.  Also, check the pins to make sure none of  
> them are bent.

A bad cable would give you CRC errors, uncorrectable error is a drive
reporting a bad sector.
