From: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Subject: Re: [2.6.28-rc1] sd I/O errors
Date: Fri, 24 Oct 2008 23:09:12 +0400
Message-ID: <49021D58.7010808@r000n.net>
References: <4901E9B0.5080401@r000n.net> <4901F6AB.1090601@tuffmail.co.uk> <200810241938.56025.bug-track@fisher-privat.net>
Reply-To: lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200810241938.56025.bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Alexey Fisher wrote:
> On Friday 24 October 2008 18:24:11 Alan Jenkins wrote:
>> I guess this is using the ata_piix driver.  It's almost certainly the
>> same issue as:
>>
>> [Regression] 2.6.28-rc1 (2fca5c): libata: kernel cant boot
>>
>> (search for it).  A patch was posted just after rc1 was released :).
>>
>> Alan
> 
> Great! i just bisected it.... :( :)
> 
Funny, I began too late and not finished ;)
Patch works for me
