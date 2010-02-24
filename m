From: "Justin P. mattock" <justinmattock@gmail.com>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
	PANIC: early exception 08 rip 246:10 error	 ffffffff810251b5 cr2 0)
Date: Wed, 24 Feb 2010 07:59:29 -0800
Message-ID: <4B854CE1.9020505@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com>
	<20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com>
	<4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com>
	<4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com>
	<4B67BC12.4080709@s5r6.in-berlin.de>
	<4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de>
	<4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com>
	<4B8547D20200007800031047@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux1394-devel-bounces@lists.sourceforge.net>
In-Reply-To: <4B8547D20200007800031047@vpn.id2.novell.com>
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
To: Jan Beulich <JBeulich@novell.com>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Dan Carpenter <error27@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Stefan Richter <stefanr@s5r6.in-berlin.de>, linux1394-devel@lists.sourceforge.net

On 02/24/2010 06:37 AM, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock@gmail.com>  03.02.10 02:43>>>
> Could you try this simple patch (against plain 2.6.33-rc8)?
>
> Thanks, Jan
>
> --- a/arch/x86/include/asm/fixmap.h
> +++ b/arch/x86/include/asm/fixmap.h
> @@ -82,6 +82,9 @@ enum fixed_addresses {
>   #endif
>   	FIX_DBGP_BASE,
>   	FIX_EARLYCON_MEM_BASE,
> +#ifdef CONFIG_PROVIDE_OHCI1394_DMA_INIT
> +	FIX_OHCI1394_BASE,
> +#endif
>   #ifdef CONFIG_X86_LOCAL_APIC
>   	FIX_APIC_BASE,	/* local (CPU) APIC) -- required for SMP or not */
>   #endif
> @@ -126,9 +129,6 @@ enum fixed_addresses {
>   	FIX_BTMAP_END = __end_of_permanent_fixed_addresses + 256 -
>   			(__end_of_permanent_fixed_addresses&  255),
>   	FIX_BTMAP_BEGIN = FIX_BTMAP_END + NR_FIX_BTMAPS*FIX_BTMAPS_SLOTS - 1,
> -#ifdef CONFIG_PROVIDE_OHCI1394_DMA_INIT
> -	FIX_OHCI1394_BASE,
> -#endif
>   #ifdef CONFIG_X86_32
>   	FIX_WP_TEST,
>   #endif
>
>
>


heres the bug report on this..
http://bugzilla.kernel.org/show_bug.cgi?id=14487

Justin P. Mattock

------------------------------------------------------------------------------
Download Intel&#174; Parallel Studio Eval
Try the new software tools for yourself. Speed compiling, find bugs
proactively, and fine-tune applications for parallel performance.
See why Intel Parallel Studio got high marks during beta.
http://p.sf.net/sfu/intel-sw-dev
