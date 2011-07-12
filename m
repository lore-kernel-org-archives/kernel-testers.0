From: Dirk Gouders <gouders-UkMx63StcVObyvKg4uJg4nF3/sHOsa9/WV23jfQ1LcY@public.gmane.org>
Subject: Re: [Bug #37472] Lenovo U160 (i915 black screen)
Date: Tue, 12 Jul 2011 10:35:13 +0200
Message-ID: <gioc0z6gn2.fsf@karga.hank.lab>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.NJ.7lYGOB@chimera>
	<CAOJsxLGkWX61TLqwgL19tN5ZQuB2cUibPsNSvCB+Ydihtus__w@mail.gmail.com>
	<yun7h7pg8y7.fsf@aiko.keithp.com> <gisjqb6h0q.fsf@karga.hank.lab>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=et.bocholt.fh-gelsenkirchen.de; s=et; t=1310459714;
	bh=rI9LZPI0qpVMnIfou9UqOrxzUF4S+tEoUK9l0SUN+uE=;
	h=From:Subject:In-Reply-To:References:Date:Message-ID:MIME-Version:
	 Content-Type;
	b=Oyjx4IvhGbo1GEw8fGOgqzsgLoeonLvs3LKwVEi5m5ZtndDm4f5EBRVW/ORP1/0HS
	 I+z2RTPKmPXu415Oj88yS9h00kRRrYnMLQQ6EplJSQoGf3revcQtux9BMGkl+aaVqW
	 F+zgOk52wWynpVd/PLl2H4UrhV3xJVBXg65yGUjY=
In-Reply-To: <gisjqb6h0q.fsf-XGOYYVKeyQUMVNNnvMCQ9Q@public.gmane.org> (Dirk Gouders's message of "Tue,
	12 Jul 2011 10:27:01 +0200")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
Cc: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Robse <rob-se-Dz115AEZgoU@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

Dirk Gouders <gouders-UkMx63StcVObyvKg4uJg4nF3/sHOsa9/WV23jfQ1LcY@public.gmane.org> writes:

> Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org> writes:
>
>> On Sun, 10 Jul 2011 14:56:19 +0300, Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>>
>>> There's no mention that the i915 developers know about this problem so
>>> I'm CC'ing Keith and Chris.
>>
>> Thanks. I've added a comment to the bug:
>>
>> First off, of course you are encouraged to re-test with 3.0-rc6 just to
>> make sure it hasn't changed in some way. I don't think anything has
>> changed enough to affect this, but it's always good to be sure.
>>
>> I note a long sequence of patches that are supposed to help with the
>> U160:
>>
>> 448f53a1ede54eb854d036abf54573281412d650 drm/i915/bios: Reverse order of 100/120 Mhz SSC clocks
>> bcfbbce822d219eb587acaba8a6e062bbeae4761 Revert "drm/i915/bios: Reverse order of 100/120 Mhz SSC clocks"
>> a76150302d6e7ebc43e1a1ddaee7fd51db8da3b3 drm/i915: Add a module option to override the use of SSC
>>
>> I'm not sure why a quirk wasn't added for this hardware; it's clearly
>> 'non-standard' in some mystic way.
>
> On June 27th, I proposed that Robse perhaps could try the workaround
> that was introduced with the latter commit: i915.lvds_use_ssc=0.
>
> It works well on my hardware and probably solves his problem as well,
> but he did not respond...

I'm sorry for the noise, I did not check new comments in the bug report
where Robse noted that the workaround works for him.  I'm not sure if
that means the bug can be closed.

Sorry again,

Dirk
