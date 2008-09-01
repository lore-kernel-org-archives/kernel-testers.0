From: "Jaswinder Singh" <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11271] BUG: fealnx in 2.6.27-rc1
Date: Mon, 1 Sep 2008 13:27:08 -0400
Message-ID: <3f9a31f40809011027o34dbfccfh9ed82228938cb572@mail.gmail.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	 <N8SeMoDzuxC.A.xIG.OkbuIB@albercik>
	 <3f9a31f40809011002k572450ffg90654912f3e1fa2a@mail.gmail.com>
	 <20080901100649.59c1ab1f@infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=TL+ozC1vk5mzhjWXnXtbNy8SE7Yp7lWrt5q6MkPF+B8=;
        b=l5CglIiVPN8kNdbG5vrjPEuPCikx71Q6iHIFu1hTjT6eVilgqirrh6sx4Qsk01CRiI
         OrZU9+FCmeRQRraYI25FbvjqWknnMFlbcqBC4GHHVvFGs38EQcO3yv0SRwEI2EUBg59D
         LYR8sVwdIh0uthv1ieIsKLkb1zUdNJhwCYYH0=
In-Reply-To: <20080901100649.59c1ab1f-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>

Hello Arjan,

On Mon, Sep 1, 2008 at 1:06 PM, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:
>>
>> Still exists in 2.6.27-rc5 :
>>
>> NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
>
>
> did you ever get transmit timeouts before 2.6.27 ?
> (I would suspect you did)
>

may be you are right, I have never noticed it earlier. But currently
this is soo serious that it has totally screwed up my networking when
I use fealnx based NICs.

Thank you,

Jaswinder Singh.
