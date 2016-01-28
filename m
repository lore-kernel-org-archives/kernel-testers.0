From: Konstantin Khlebnikov <koct9i@gmail.com>
Subject: Re: [PATCH] mm: provide reference to READ_IMPLIES_EXEC
Date: Thu, 28 Jan 2016 12:33:12 +0300
Message-ID: <CALYGNiNvUFyPCNvPiDSbXHiSTmYCfwPwVGeYqzhNe8SmM+bfMQ@mail.gmail.com>
References: <1453972263-25907-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Return-path: <owner-linux-mm@kvack.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WQ2WH2lEQUDGiF9jZ8Ud1M8O4j+WlFoE7eSma0+g7HM=;
        b=t1DVLFuJPA/4395mgwTW3BdpVaR7kM0e/BfMkbfHa+Yh3NluE1vn2pMA8HrQ7Pz6AX
         uMdTsTTSUWvN/Im+ysEk6XsofkEP/7NhaDDSgfSsmNZAKUu7VAZUPje4Eytgy1+eyZq4
         MmTw03l8cZKFbS6oQ/4XzqfsRjsX4RSTqZJp6rZkbIpbJmQR2KgFNahGyvPHL1IKdXBU
         rIWXH3cag+g6Wq6C+H1MFG22DF1oqF6wXRlnAGU3scx/u0JgA2f/i0J+yPqctnYeILo8
         k2aCZdDpdmwjVlsSTkMhx5mKa39dRxoKVoCcxblSvfdHW4sufzJeV5DfSfpGLAIBfP2W
         h3eA==
In-Reply-To: <1453972263-25907-1-git-send-email-sudipm.mukherjee@gmail.com>
Sender: owner-linux-mm@kvack.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org, "linux-mm@kvack.org" <linux-mm@kvack.org>

On Thu, Jan 28, 2016 at 12:11 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> blackfin defconfig fails with the error:
> mm/internal.h: In function 'is_stack_mapping':
> arch/blackfin/include/asm/page.h:15:27: error: 'READ_IMPLIES_EXEC' undeclared
>
> Commit 07dff8ae2bc5 has added is_stack_mapping in mm/internal.h but it
> also needs personality.h.

I have different patch which should fix this too.
It removes usage of VM_STACK_DEFAULT_FLAGS from that file.

>
> Fixes: 07dff8ae2bc5 ("mm: warn about VmData over RLIMIT_DATA")
> Cc: Konstantin Khlebnikov <koct9i@gmail.com>
> Signed-off-by: Sudip Mukherjee <sudip@vectorindia.org>
> ---
>
> build log at:
> https://travis-ci.org/sudipm-mukherjee/parport/jobs/105335848
>
>  mm/internal.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/mm/internal.h b/mm/internal.h
> index cac6eb4..59c496f 100644
> --- a/mm/internal.h
> +++ b/mm/internal.h
> @@ -14,6 +14,7 @@
>  #include <linux/fs.h>
>  #include <linux/mm.h>
>  #include <linux/pagemap.h>
> +#include <linux/personality.h>
>  #include <linux/tracepoint-defs.h>
>
>  /*
> --
> 1.9.1
>

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
