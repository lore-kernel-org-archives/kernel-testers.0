From: Hans de Bruin <bruinjm-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: root on nfs or other troubles
Date: Sun, 05 Apr 2009 18:02:35 +0200
Message-ID: <49D8D61B.4030507@xs4all.nl>
References: <49CAA7C0.3040109@xs4all.nl> <49D12DF4.7040902@xs4all.nl> <49D79749.3060906@xs4all.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49D79749.3060906-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hans de Bruin wrote:
> Hans de Bruin wrote:
>> Hans de Bruin wrote:
>> ...
>>
>>>
>>> I could try an older kernel, say about half a year ago, but things 
>>> have changed in haf a year like the kernel verion of the nfs server, 
>>> nfs parmeters and kernel .config file. The second client (different 
>>> hardware) is as stable as a rock.
>>
>> so far 2.6.24 and 2.6.26 are stable
> 
> After bisecting I ended somewehere in 2.6.29-rc7:
> bad: [2e2a6a9f710255c87cef670fb71fc9e74bef1da2] sh_eth: Fix mistake of 
> the address of SH7763
> 
and apparently refixed in 2.6.29.1

--
Hans

