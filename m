From: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Fri, 10 Oct 2008 15:53:42 +0400
Message-ID: <20081010115342.GB25982@x200.localdomain>
References: <264b990a0810100126l1029f734x7204f8c42ae21609@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=/5xf10zbKkKjfhfW5UV6BLp/NPpmHm6ionyUTWIZvqA=;
        b=ph9PuPNLn03bKZHuu7qy6zhTsCDLGsa3ru3lSBHjTLc/ZcxSkOjtI8rfAY7lJ1RGdk
         N7YLUTOMijPNkSDhdhJrbWsNG+FP0MRJLN41VTx89ebvAVKvDNpeszGyMFzNub7K1toV
         mfKLfTNviJxrhLmq4qXrJJ/+vWksqcpoA4gS8=
Content-Disposition: inline
In-Reply-To: <264b990a0810100126l1029f734x7204f8c42ae21609-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Fri, Oct 10, 2008 at 03:26:44PM +0700, Yudha Harimantoro T wrote:
> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
> 2.6.27 patch and try to build it.
> 
> I build with `make oldconfig` and answer any question with default
> answer, I just press [enter].

Not wise.

> I build with `make`. No error and all compiled.
> Then I install with `make modules_install` and `make install`.
> 
> After reboot the system I got 'kernel panic'.
> This is the error picture :
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
> Is it a bugs?
> 
> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
> [2.6.26.6 run well]

Post diff -U0 between old and new config.
