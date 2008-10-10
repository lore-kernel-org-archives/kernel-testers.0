From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Error : Linux-2.6.27
Date: Fri, 10 Oct 2008 13:36:34 +0100
Message-ID: <48EF4C52.4070802@tuffmail.co.uk>
References: <264b990a0810100126l1029f734x7204f8c42ae21609@mail.gmail.com> <20081010115342.GB25982@x200.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=3bVcAbPzCIUfBW4EL3li8J1JMqV8vhNYkugHq3ctYWw=;
        b=CQX7ryQvVqaMje470Y3Sddn64acqSTzxiOrGjjvP5wkTVGIIolGm2eGM7+Xfqw4L/C
         gXaROsEgOnRexKafP9GBjkBiZCCqYsqw8SW7rovNsSwt+cz3AFSWzbUwJgdLLvbLT3lX
         DajVTS46qsyg5bOU9CzKmy3fRwo882qL/EaWc=
In-Reply-To: <20081010115342.GB25982-2ev+ksY9ol182hYKe6nXyg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Alexey Dobriyan wrote:
> On Fri, Oct 10, 2008 at 03:26:44PM +0700, Yudha Harimantoro T wrote:
>   
>> Yesterday I build kernel 2.6.26.6 and it's run well. Today I got
>> 2.6.27 patch and try to build it.
>>
>> I build with `make oldconfig` and answer any question with default
>> answer, I just press [enter].
>>     
>
> Not wise.
>
>   
>> I build with `make`. No error and all compiled.
>> Then I install with `make modules_install` and `make install`.
>>
>> After reboot the system I got 'kernel panic'.
>> This is the error picture :
>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101358.jpg
>> Is it a bugs?
>>
>> http://www.ryht.co.cc/wordpress/wp-content/uploads/2008/10/pa101353.jpg
>> [2.6.26.6 run well]
>>     
>
> Post diff -U0 between old and new config.
>   

There is scripts/diffconfig in the 2.6.27 tree, which you should
probably use. "Using standard diff to compare .config files often
includes extraneous and distracting information".
