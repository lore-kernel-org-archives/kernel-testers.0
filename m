From: Benjamin LaHaise <bcrl@kvack.org>
Subject: Re: [PATCH -next] aio: Fix compile error due to unexpected use of cmpxchg()
Date: Fri, 22 Jan 2016 13:44:20 -0500
Message-ID: <20160122184420.GR12249@kvack.org>
References: <1453486479-19347-1-git-send-email-linux@roeck-us.net>
Mime-Version: 1.0
Return-path: <owner-linux-aio@kvack.org>
Content-Disposition: inline
In-Reply-To: <1453486479-19347-1-git-send-email-linux@roeck-us.net>
Sender: owner-linux-aio@kvack.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Guenter Roeck <linux@roeck-us.net>
Cc: Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org, linux-aio@kvack.org, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

On Fri, Jan 22, 2016 at 10:14:39AM -0800, Guenter Roeck wrote:
> cmpxchg() on some architectures (ia64) doesn't like functions as parameters.
> This results in the following compile error on the affected architectures.
> 
> fs/aio.c: In function 'aio_thread_fn':
> fs/aio.c:1499:1: error: cast specifies function type

> Fixes: 6a81013efc40 ("aio: add support for IOCB_CMD_POLL via aio thread helper")

Ah, I was wondering if there was an easy way to fix this bug.  Applied -- 
thanks!

		-ben

> Cc: Benjamin LaHaise <bcrl@kvack.org>
> Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> ---
> No idea if this is the correct or an acceptable fix.
> If not, please consider this to be a bug report.
> 
>  fs/aio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/aio.c b/fs/aio.c
> index 56bcdf4105f4..229a91e391df 100644
> --- a/fs/aio.c
> +++ b/fs/aio.c
> @@ -1495,8 +1495,8 @@ static void aio_thread_fn(struct work_struct *work)
>  	 * cancellation if it has not already occurred.
>  	 */
>  	old_cancel = cmpxchg(&iocb->ki_cancel,
> -			     aio_thread_queue_iocb_cancel_early,
> -			     aio_thread_queue_iocb_cancel);
> +			     (kiocb_cancel_fn *)aio_thread_queue_iocb_cancel_early,
> +			     (kiocb_cancel_fn *)aio_thread_queue_iocb_cancel);
>  	if (old_cancel != KIOCB_CANCELLED)
>  		ret = iocb->ki_work_fn(iocb);
>  	else
> -- 
> 2.1.4

-- 
"Thought is the essence of where you are now."

--
To unsubscribe, send a message with 'unsubscribe linux-aio' in
the body to majordomo@kvack.org.  For more info on Linux AIO,
see: http://www.kvack.org/aio/
Don't email: <a href=mailto:"aart@kvack.org">aart@kvack.org</a>
