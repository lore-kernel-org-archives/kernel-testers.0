From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: 2.6.30-rc1: touchpad disabled on hibernation
Date: Thu, 25 Jun 2009 18:21:00 +0100
Message-ID: <4A43B1FC.7060609@tuffmail.co.uk>
References: <4A438BA7.9010800@tuffmail.co.uk> <8db1092f0906251016l5ac85bfdpbac841b939cfac2a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=pLUi+I4daiY9kJ7Uqbc7KMLtwfxotrpxcKfBfZ/yq7c=;
        b=hUbjPU+9LuBrsEBLd5QkQIMGnbfF8gba6sJxV228tBEtF1mAQVqn1wJg/QdkkIZFAN
         BDkX9Xr9Z1GxtF6CZhuHjPHe/sGWZqJcMW4UwpGlPEibJDcPzGY+NI6bvXKUGxW0b1zb
         4W+BTM3ZO05eiQ+Y2MbsyAjQSVgBwjsAFXZFc=
In-Reply-To: <8db1092f0906251016l5ac85bfdpbac841b939cfac2a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

Maciej Rutecki wrote:
> 2009/6/25 Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>:
>   
>> The synaptics touchpad on my EeePC 701 dies on hibernation.  2.6.30 was
>> fine, and it doesn't happen on suspend to ram either.  There are no
>> obvious error messages, but maybe this boot message is relevant:
>>
>> Platform driver 'i8042' needs updating, please use dev_pm_ops
>>
>>     
>
> Similar on s2disk, HP/Compaq notebook. Try reload psmouse module. I
> reported it, but nobody answer.
>   
That works, thanks.

Alan
