From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 06:18:16 +1000
Message-ID: <21d7e9970809241318s2717e121ic53f1357898a2cd0@mail.gmail.com>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	 <20080924.003638.71148740.davem@davemloft.net>
	 <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
	 <20080924.020116.193720569.davem@davemloft.net>
	 <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
	 <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
	 <alpine.LNX.1.10.0809241836180.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=3GRbxByupVDUOJSec7f2m9GPPYl5DxvXI76GfO1b+O8=;
        b=aVRo2E8FGW5U505beOrjksH7xUvUR2oquRqz+jEJ1tHEhvsm6aLJ8/Dp4/hJ55bAFd
         ypKdHvtOUgN2UM6LM/i4fTYpt89rBT9opDLmCUzhL9xjOkeSDPUMqHD83HXaLLnrfvDM
         gWACGAzkWFOBWVOsG6lvjy5Cuwm0SI2MV8/yM=
In-Reply-To: <alpine.LNX.1.10.0809241836180.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Thu, Sep 25, 2008 at 2:37 AM, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org> wrote:
> On Wed, 24 Sep 2008, Jiri Kosina wrote:
>
>> Dave (Airlie, too many Daves on CC here really), do you by any chance
>> see any recent change in kernel intel graphic parts of DRM be causing
>> this breakage?
>
> BTW, why is the PAT fix implented in commit 242e3df80 needed only for
> radeons?
>

Good question, mainly because only radeons showed the illegal mapping crash,
which was mapping via sysfs _wc files and then doing a UC mapping in
the kernel over the
same address space would fail. However this was VRAM related and these
things don't have VRAM.

Dave.

> --
> Jiri Kosina
> SUSE Labs
>
