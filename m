From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: Reproducible rRootage segfault with 2.6.25 and above (solved)
Date: Mon, 25 Aug 2008 21:30:37 +0100
Message-ID: <48B3166D.3090300@yahoo.com>
References: <g8sncp$8us$1@ger.gmane.org> <20080825131620.1d6aa87f@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080825131620.1d6aa87f-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Cox <public-alan-qBU/x9rampVanCEyBjwyrvXRex20P6io-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org>
Cc: public-linux-kernel-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org, public-kernel-testers-u79uwXL29TY76Z2rM5mHXA-z5DuStaUktnZ+VzJOa5vwg@public.gmane.org



Alan Cox wrote:
> For the kernel bisect if you get stuck at a point it fails remember that
> point and then lie either yes/no to it working and carry on. If need be
> you can go back the other way.

I tried this quite a few times (you can always use replay and edit out
the lie) before posting (and using gitk to pick commits to) but it seems
like huge swathes of what I was interested in were inside this USB
issue. Eventually I broke down and used a loan laptop that didn't need
to boot from USB. I narrowed the issue down to 10 or so patches (from
8a423ff0c4a0472607bbed6790fdaeec54af2ebb to
0249c9c1e7505c2b020bcc6deaf1e0415de9943e which covers patches that
randomize brk and change vDSO) but after further incorrectly bisecting
to a patch it looks like the segfault was totally legit...

> Another completely off the wall guess would be that your client code is
> causing gcc to generate something where it is using data which has ended
> up below the stack pointer and the timings have changed. Either through
> gcc bug or passing around the address of an object that is out of
> context. At that point a signal will rewrite the data in fun ways
> producing results like you describe.

After reading this I went back and stuffed a bunch of asserts into the
rRootage code to see what was going on and found what looks like a bug
rRootage. I guess valgrind can't do array bounds checking - in fact this
is what I get for not reading the FAQ -
http://valgrind.org/docs/manual/faq.html#faq.overruns . A workaround
seems to be to do capping on the value used to index the array -
https://bugs.launchpad.net/ubuntu/+source/rrootage/+bug/261189/comments/4
  . I even just tried using mudflap but that brought up so many spurious
warnings (supposedly it doesn't currently do well with C++) it wasn't
helpful.


-- 
Sitsofe | http://sucs.org/~sits/


