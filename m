From: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>
Subject: Re: [Bug #11271] BUG: fealnx in 2.6.27-rc1
Date: Mon, 1 Sep 2008 23:18:10 +0200
Message-ID: <20080901211810.GA21777@electric-eye.fr.zoreil.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.xIG.OkbuIB@albercik> <3f9a31f40809011002k572450ffg90654912f3e1fa2a@mail.gmail.com> <20080901100649.59c1ab1f@infradead.org> <3f9a31f40809011027o34dbfccfh9ed82228938cb572@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <3f9a31f40809011027o34dbfccfh9ed82228938cb572-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> :
[...]
> may be you are right, I have never noticed it earlier. But currently
> this is soo serious that it has totally screwed up my networking when
> I use fealnx based NICs.

Could you enable CONFIG_PRINTK_TIME and give Jeff's reversal suggestion
a try ?

I do not see where the patch would break. Would a broken clock trigger
a lot of spurious tx timeout ?

-- 
Ueimor
