From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Wed, 18 Mar 2009 01:31:42 +0800
Message-ID: <b6a2187b0903171031l3657dc93rbfe01dd4dc9b7a4@mail.gmail.com>
References: <1237143683.24621.7.camel@johannes.local>
	 <alpine.LFD.2.00.0903161250080.3082@localhost.localdomain>
	 <b6a2187b0903161655q15437156qc926c8db37d8ba4b@mail.gmail.com>
	 <20090317144802.GF3549@tuxdriver.com>
	 <20090317152801.GA6737@tuxdriver.com> <20090317153924.GA21061@elte.hu>
	 <20090317160527.GB6737@tuxdriver.com>
	 <b6a2187b0903170924u72723220x4c0a717e3cfebf8d@mail.gmail.com>
	 <20090317171047.GF6737@tuxdriver.com>
	 <b6a2187b0903171027w328f1dfds781910c0571b2424@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=vx+EuJdmU0zl/4X0dN2v8/Qiy3dR4/YWTM4K0fP81/s=;
        b=bkiX9wKzkvOjpjfIm8Ox5nGXSViFpDBdsyrMUFV+x97bYuHw+7+5navYtgq0if7ExK
         /VYHrauI8EwJ0dqf1vT99dsS8VRhfn8/C9s9kKDY//84fCRpI+8gLH+UNSDUgNKDcqzJ
         jJadyOYlpWg9bJWzw8/gmfCeqYBWIhOJyn/qs=
In-Reply-To: <b6a2187b0903171027w328f1dfds781910c0571b2424-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Mar 18, 2009 at 1:27 AM, Jeff Chua
>> Perhaps you have a dirty tree?
>> =A0 =A0 =A0 =A0git checkout -f
>
> May be. Checking now.

Oh, now I know why. I was "mucking" the SSID stuffs trying to revert
some of the wireless codes on 2.6.29-rc8, and just applied your
patches on top.

My downloaded tree is clean. I'm trying your patches now.

Jeff.
