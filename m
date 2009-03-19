From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Thu, 19 Mar 2009 12:49:30 +0800
Message-ID: <b6a2187b0903182149x77e416ecuf73be2970173c601@mail.gmail.com>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	 <b6a2187b0903141958u9dae0fdk1f44b387108b99e4@mail.gmail.com>
	 <b6a2187b0903142006u546fad9eme66f9ea7b464b81f@mail.gmail.com>
	 <1237140665.24621.2.camel@johannes.local>
	 <alpine.LFD.2.00.0903151136310.3131@localhost.localdomain>
	 <1237143683.24621.7.camel@johannes.local>
	 <20090315202603.GA9077@elte.hu>
	 <b6a2187b0903160624gb9d207dv301506e589d93ed4@mail.gmail.com>
	 <1237317742.31814.28.camel@johannes.local>
	 <b6a2187b0903181958ke11abe7tdcbc4efeb950954d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=+vQehlyIYBqEqzkiSgFB2fa/XMUdZj4mXwA6GXDxdFI=;
        b=Ap4k/RTVBNw1OF2thUvfT7stPN7K9w2l2fEbZXtggwRtKHOdizlUFJ14d1JFzPiT1x
         p3ygGAxcSXJcKGNRTFzoo2sOk6pycdIwge9skSy9sTbWS2ptqGQKCNjTvw4CqWAb1bON
         1oPgZL1rN37fjSuYaD3B+lR75dtBicgSFTXzo=
In-Reply-To: <b6a2187b0903181958ke11abe7tdcbc4efeb950954d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Thu, Mar 19, 2009 at 10:58 AM, Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> I've tracked down to the sequence of iwconfig that causes it to fail.
> This loop does not work at all without John's patch , but will work
> 100% when patched.
> This loop only works 8 of 10 times with/without the patch.

Ignore the above loop thing. The cause seems to be this one instead.


# this needs patch to work ...
iwconfig wlan0 mode Managed
ifconfig wlan0 up
iwconfig wlan0 essid xxx
iwconfig wlan0 key restricted xxx
iwconfig wlan0 ap auto channel auto


# this works with patch ...
iwconfig wlan0 mode Managed essid xxx key restricted xxx
ifconfig wlan0 up
iwconfig wlan0 ap auto channel auto

It looks the placement of "ifconfig" matters. But works on 2.6.28-rc3.


Thanks,
Jeff.
