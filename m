From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Subject: Re: linux-next: Tree for Feb 17
Date: Tue, 23 Feb 2016 18:21:38 +0530
Message-ID: <56CC55DA.1010308@gmail.com>
References: <20160217163921.42aeff6a@canb.auug.org.au> <20160217115248.GA4294@sudip-pc> <56C4AFE8.6020101@caviumnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=T9tkTMg5x1rIXG7tPKdgERgx1F/TbDESi6ZokzNO1jU=;
        b=fXhxpklBlYFpRsSVU1uprS6isHc/hDnflZM0vhuEGDovwnx1NjBcOrrWwIflKVKTC4
         dfVDCWCFMZ8oqqWXXYameB/Q5Y67nvT9saHx2+de/SV4EC6cGZEAHp6V+EmcO7awcmDw
         DZOnkFsNs2TGShGQfyizxuugs6C+YTcaj7M5xp8HSy5d2AQr0mqEsRSmR4z2HQrEESFN
         dlAmoVw24uD8jofHdkf3/UoHj5qQx6ZLdCnYotJlc+0XpGjbERIXn5exRrKx1Ku84uE9
         dOwm9RL6ToIMef8xtKQ7tlfT5fzKCJ72WtL0eq7ZlFk/xMj6NT8e4StXgI+SApSfxOfD
         IBZA==
In-Reply-To: <56C4AFE8.6020101@caviumnetworks.com>
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ralf Baechle <ralf@linux-mips.org>
Cc: David Daney <ddaney@caviumnetworks.com>, David Daney <david.daney@cavium.com>, linux-next@vger.kernel.org, linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>, kernel-testers@vger.kernel.org

On Wednesday 17 February 2016 11:07 PM, David Daney wrote:
> On 02/17/2016 03:52 AM, Sudip Mukherjee wrote:
>> On Wed, Feb 17, 2016 at 04:39:21PM +1100, Stephen Rothwell wrote:
>>> Hi all,
>>>
>>> Changes since 20160216:
>>
>> since last few days build of mips cavium_octeon_defconfig is failing
>> with the error:
>> arch/mips/include/asm/octeon/cvmx.h:60:39: fatal error:
>>     asm/octeon/cvmx-ciu3-defs.h: No such file or directory
>>
>
> When Ralf applied the patches, he missed this one:
>
> https://www.linux-mips.org/cgi-bin/mesg.cgi?a=linux-mips&i=1455044413-9823-4-git-send-email-ddaney.cavm%40gmail.com
>
>
> This is PATCH 3/8 and if applied in  the proper order, it should fix
> this problem.
>
> Ralf: It looks like you should consider re-spinning  mips-for-linux-next
> to include this patch.

Hi Ralf,

We still have the build failure. Do you want me to send that missing 3/8 
rebased on top of mips-for-linux-next so that it will be easy for you to 
apply.

regards
sudip
