From: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Thu, 29 Jul 2010 22:31:51 +0200
Message-ID: <4C51E537.9000701@gmail.com>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera> <tneGvaw1wLL.A.9fB.v3XSMB@chimera> <20100723131825.GT3948@outflux.net> <201007232205.14936.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=OUgcmvpVrHhWd2BcLu4qDH+6s/W5I+P9yfUM7DtSeBM=;
        b=unrxjEA/+G1w0lnDfl8Az443qx0y7kEgLjImYfdtPdMMQRn+BeGmSf4pMgeu0sY0wK
         6LI5bZxy1hl0hqriAaSI290ZoeaoPyte64gyOh16fCHfG+vazG1BXZ7jr1JXi6O/nM22
         vxl0sXoVHO1fgpySYzXSg/gbyH+YZuhV/O2N0=
In-Reply-To: <201007232205.14936.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kees Cook <kees.cook-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tim Gardner <tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 07/23/2010 10:05 PM, Rafael J. Wysocki wrote:
> On Friday, July 23, 2010, Kees Cook wrote:
>> On Fri, Jul 23, 2010 at 01:47:30PM +0200, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a summary report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.34.  Please verify if it still should be listed and let the tracking team
>>> know (either way).
>>
>> The regression still exists[1] in the mainline kernel -- the confirmed fix
>> mentioned below has not been committed.
> 
> That's why the bug entry hasn't been closed yet. :-)

Finally, it's merged as e7b96f28c...

regards,
-- 
js
