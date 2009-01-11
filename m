From: "Jeff Chua" <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Mon, 12 Jan 2009 00:56:29 +0800
Message-ID: <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>
	 <20090111162949.GA15338@elte.hu>
	 <200901111736.24350.borntraeger@de.ibm.com>
	 <20090111163904.GA21806@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=4Kahe9t+XG/ad4sEtpp7SbknANbLZGexYK0HdTD/unQ=;
        b=Ipj63FzkO7ehViK9IBf6oYXZJm6ysCxPQwzAadHoELyvTdtsgVNVaT5mzP3AvFoP16
         WcJFro0Urn5ZOPbn8Vua5nlB3++1NmpudlmznFH6oxXNU/ZWDnUvcGMI+nLwgVx03VQ8
         qiWsxQjXUQohFOvbFWAIr/4hDv4qH25VF/pXU=
In-Reply-To: <20090111163904.GA21806-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>

On Mon, Jan 12, 2009 at 12:39 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
> * Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org> wrote
>> I guess Jeff, meant the other way around.
>> Since a0e280e0f33f6c859a235fb69a875ed8f3420388 is a fix for a known S2R
>> problem , the earlier patch (before) does of course not work.
> ah, okay.
> So i suspect that at every bisection point, this should be done:
>  git cherry-pick a0e280e0f33f6c859a235fb69a875ed8f3420388

I started with the latest git, and did this ...

git bisect start
git bisect bad
git bisect good a0e280e0f33f6c859a235fb69a875ed8f3420388

Everything in-between should have
a0e280e0f33f6c859a235fb69a875ed8f3420388 applied?

Jeff.
