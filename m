From: =?ISO-8859-1?Q?Thomas_M=FCller?= <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #15719] virtio_net causing kernel BUG when running under
 VirtualBox
Date: Mon, 12 Apr 2010 11:50:28 +0200
Message-ID: <4BC2ECE4.1020704@mathtm.de>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>	<JVS2s9dmTsP.A.6eF.xsPvLB@chimera>	<4BC2DC5A.6090007@mathtm.de> <20100412.022828.52192543.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100412.022828.52192543.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org, mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org, xma-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org

Hi,

On 12.04.2010 11:28, David Miller wrote:
>> a fix (commit 2c45cd43ff791cc4ab6a6332165ad53d7bcb3673) is included in
>> linux-next and net-next, but not (yet?) in linux-2.6.
> 
> This bug was only present in -next and net-next-2.6 to the best of
> my knowledge, so the fix only showing up there is appropriate.

I think I have to disagree.

I hit this bug with a clean checkout of linux-2.6 and I also bisected
against the linux-2.6 repo.
(I did however use a Fedora rawhide kernel config as starting point,
so presumably there were a lot of debug options activated)

When Shirley Ma sent the fix, I did verify that linux-2.6 without
the fix did not work, and that everything worked fine with it applied.


Regards,
Thomas
