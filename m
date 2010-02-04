From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
	PANIC: early exception 08 rip 246:10 error	 ffffffff810251b5 cr2 0)
Date: Thu, 04 Feb 2010 01:04:41 -0800
Message-ID: <4B6A8DA9.4090804@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com>
	<20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com>
	<4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com>
	<4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com>
	<4B67BC12.4080709@s5r6.in-berlin.de>
	<4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de>
	<4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com>
	<4B694D5C020000780002D6DA@vpn.id2.novell.com>
	<4B6A0123.3010607@gmail.com>
	<4B6A9960020000780002DA6B@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux1394-devel-bounces@lists.sourceforge.net>
In-Reply-To: <4B6A9960020000780002DA6B@vpn.id2.novell.com>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Dan Carpenter <error27@gmail.com>, bernhard.kaindl@gmx.net, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Rafael Wysocki <rjw@sisk.pl>, Stefan Richter <stefanr@s5r6.in-berlin.de>, hpa@zytor.com, Ingo Molnar <mingo@elte.hu>, linux1394-devel@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>, ebiderman@xmission.com

On 02/04/10 00:54, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock@gmail.com>  04.02.10 00:05>>>
>> [   0.000000] 0100000000 - 0140000000 page 2M
>> [   0.000000] kernel direct mapping tables up to 140000000 @ b000-11000
>> [   0.000000] init_ohci1394_dma: initializing OHCI-1394 at 05:00.0
>> [   0.000000] bootmem alloc of 4096 bytes failed!
>> [   0.000000] Kernel panic - not syncing: Out of memory
>> [   0.000000] Pid: 0, comm: swapper Not tainted
>> 2.6.33-rc6-00072-gab65832 # 39
>> [   0.000000] Call Trace:
>>
>> then the rest shown on the picture on the bug report.
>>
>> Out of memory?
>
> bootmem allocation before bootmem was even initialized. And that's
> likely because the code tries to populate the pmd that (due to the
> issue explained yesterday) isn't statically initialized.
>
> Jan
>
>

I'll have a look at this in the morning(late over here),
but one thing I'm seeing is the device numbers:
the error shows 05:00.0 while on a good go
of this I saw the address at **3** something(can grab
the info later for you).

which probably goes to what you are saying:
tries to populate the pmd

a quick google on this showed somewhere
at bootmem.c any ideas on this or where
this might be caused besides fixmap?
(or is fixmap the main location?);


Justin P. Mattock

------------------------------------------------------------------------------
The Planet: dedicated and managed hosting, cloud storage, colocation
Stay online with enterprise data centers and the best network in the business
Choose flexible plans and management services without long-term contracts
Personal 24x7 support from experience hosting pros just a phone call away.
http://p.sf.net/sfu/theplanet-com
