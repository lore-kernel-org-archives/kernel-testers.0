From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #42669] 3.3-rc1: compiling problems nvme , l2cap_sock ,
 mc13892-regulator , and snd-pcsp don't work
Date: Fri, 24 Feb 2012 14:57:37 -0500 (EST)
Message-ID: <20120224.145737.662334352795127267.davem@davemloft.net>
References: <qCQH7HfZS8E.A.FVG.M9rRPB@chimera>
	<20120223.181904.501214130038312055.davem@davemloft.net>
	<web-701709481@zbackend1.aha.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <web-701709481-zcyLqNHFQq3Ee+7He9zlJw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: w.landgraf-ow1r9FSYgO0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org

From: "werner" <w.landgraf-ow1r9FSYgO0@public.gmane.org>
Date: Fri, 24 Feb 2012 06:48:58 -0400

> But why then the error is still in the source code, at least until the
> last 3.3-rc4 ???  I also compiled the code, removing always inline
> from the line as in the patch, then it works.

Because the fix is in the networking maintainer's tree and will shortly
be sent to Linus for inclusion.

> This things happens, because people, after changes, nor compile them
> subroutines ...  :( Much less, test them ...

You need to relax.

The compile error only occurs with more recently compiler versions, so
it worked for the majority of people and in fact it compiles just fine
for me without the fix too.
