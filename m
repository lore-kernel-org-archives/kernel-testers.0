From: "Jun Ma" <sync.jma-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: MIPS kernel hangs: Warning: unable to open an initial console. /sbin/init
Date: Wed, 28 May 2008 11:15:12 +0800
Message-ID: <dcf6addc0805272015w1f60457bic919ee3acc79d0fb@mail.gmail.com>
References: <55815.192.168.1.71.1210856139.webmail@192.168.1.71>
	 <20080515133855.GA20300@roarinelk.homelinux.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=1lI4LCLH1URYbLYIUnQp9sz1tkLWcby+diGqZhCJ06Y=;
        b=G+vWWCCnYT0RQ81/+C2+3YbFt9ltM4S+jukReSZZxSuSXGnhSckSeLf/NaKSifbMcfaEl0/4nkVYkdZBv0ak78p6qzEbMMbJabReCcG/cyKQOFTphaHMh0L8FV/ymvfJubdOdia/eATaV5AwbDzeyhSVh6UJ/WUmgWwlhZrNcTo=
In-Reply-To: <20080515133855.GA20300-nEyxjcs6f3Vin2gBucwGBecsttgLyre6@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manuel Lauss <mano-nEyxjcs6f3Vin2gBucwGBecsttgLyre6@public.gmane.org>
Cc: abhiruchi.g-Tu+ahasfCLWgSpxsJD1C4w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mips-6z/3iImG2C8G8FEW9MqTrA@public.gmane.org" <linux-mips-6z/3iImG2C8G8FEW9MqTrA@public.gmane.org>, kernel-testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, May 15, 2008 at 9:38 PM, Manuel Lauss
<mano-nEyxjcs6f3Vin2gBucwGBecsttgLyre6@public.gmane.org> wrote:
> On Thu, May 15, 2008 at 08:55:39AM -0400, abhiruchi.g-Tu+ahasfCLWgSpxsJD1C4w@public.gmane.org wrote:
>> Hi,
>>
>> My kernel hangs by initializing the system. My target is Alchemy DB1200. I use crosstool-ng to build MIPS cross toolchain and ptxdist to build ext2 filesystem.
>> kernel version:linux-2.6.22
>
> Try and add "console=ttyS0,115200" to the kernel commandline (either in
> yamon or kernel config).
>
>

And you must have a tty node in your /dev directory, e.g. /dev/ttyS0


-- 
FIXME if it is wrong.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
