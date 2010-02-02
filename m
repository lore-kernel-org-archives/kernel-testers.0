From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
	early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Mon, 01 Feb 2010 23:42:34 -0800
Message-ID: <4B67D76A.3050906@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	<de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com>
	<20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com>
	<4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com>
	<4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com>
	<4B67BC12.4080709@s5r6.in-berlin.de>
	<4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de>
	<4B67CCEC.2030103@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux1394-devel-bounces@lists.sourceforge.net>
In-Reply-To: <4B67CCEC.2030103@s5r6.in-berlin.de>
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
	<mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: linux1394-devel-bounces@lists.sourceforge.net
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, linux1394-devel@lists.sourceforge.net, Dan Carpenter <error27@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>

On 02/01/10 22:57, Stefan Richter wrote:
> Stefan Richter wrote:
>> Do I understand correctly that at this moment it is only known that the
>> bug could be
>>    - *either* a 2.6.31 ->  2.6.32 regression
>>    - *or* an x86-64 specific bug that does not occur on x86-32,
>> right?
>
> (OK, according to your other post it /is/ a regression, at least on
> x86-64 and definitely between 2.6.27 (good) and 2.6.32 (bad).)

I'll go with the bisect in the morning(late over here),
and then go from there.(just pissed at myself
for not thinking to do this at the beginning).

Justin P. Mattock

------------------------------------------------------------------------------
The Planet: dedicated and managed hosting, cloud storage, colocation
Stay online with enterprise data centers and the best network in the business
Choose flexible plans and management services without long-term contracts
Personal 24x7 support from experience hosting pros just a phone call away.
http://p.sf.net/sfu/theplanet-com
