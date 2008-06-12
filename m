From: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Subject: Re: WARNING : section mismatch while compiling 2.6.25.6
Date: Thu, 12 Jun 2008 20:14:43 +0200
Message-ID: <20080612181443.GC2271@uranus.ravnborg.org>
References: <f1d7325b0806120029y5f5e0bd8i6caa626bf9af59df@mail.gmail.com> <3219c8500806120033q60f02574p682e9331311eb0dd@mail.gmail.com> <f1d7325b0806120707r4212c2e7x6b0f53218bc23bf9@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <f1d7325b0806120707r4212c2e7x6b0f53218bc23bf9-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: vibi sreenivasan <vibisreenivasan.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Abhishek Singh <abhi.iitg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rakib Mullick <rakib.mullick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, Jun 12, 2008 at 02:07:40PM +0000, vibi sreenivasan wrote:
> hi,
> i tried with make defconfig & then make .
> i am getting same error.
This is a warning that should be fixed in latest -rc kernel
by commit: ed49f5d0015927334dcca3607a9bfc1478ff8f55

You can safely ignore the warning.

	Sam
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
