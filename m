From: Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Fri, 10 Oct 2008 16:41:36 -0400
Message-ID: <48EFBE00.8030609@tmr.com>
References: <264b990a0810100126l1029f734x7204f8c42ae21609@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <264b990a0810100126l1029f734x7204f8c42ae21609-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Yudha Harimantoro T <public-yudha.ht-Re5JQEeQqe8AvxtiuMwx3w-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>
Cc: public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org, public-linux-kernel-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org



Yudha Harimantoro T wrote:
> Hi all,
> 
> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
> 2.6.27 patch and try to build it.
> 
> I build with `make oldconfig` and answer any question with default
> answer, I just press [enter].
> I build with `make`. No error and all compiled.
> Then I install with `make modules_install` and `make install`.
> 
I realize that this is a low-probability thought, but did you:
- apply the patch against 2.6.26 NOT 2.6.26.6
- run make clean before applying the patch

> After reboot the system I got 'kernel panic'.
> This is the error picture :
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
> Is it a bugs?
> 
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
> [2.6.26.6 run well]
> 
I keep configs in a separate place. I would first copy a 2.6.26 tree to a new 
directory (cp -rl linux-2.6.26 linux2.6.27) then be sure I had a clean copy with 
"make distclean" (or "make mrproper") and then apply the 2.6.27 patch. Then I 
would copy the 2.6.26 (or maybe 2.6.26.6) config to .config, and make the oldconfig.

None of that is magic, it just keeps me from making common mistakes, lets me 
start with a clean 2.6.27, etc, etc.

You mentioned oldconfig, but not starting back with a clean 2.6.26, which made 
me think of this.

-- 
Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>
   "We have more to fear from the bungling of the incompetent than from
the machinations of the wicked."  - from Slashdot
