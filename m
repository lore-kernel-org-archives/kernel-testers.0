From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #11355] Regression in 2.6.27-rc2 when cross-building the
 kernel
Date: Mon, 01 Sep 2008 11:51:26 -0500
Message-ID: <48BC1D8E.9050608@lwfinger.net>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>	 <VSpL6AnBTS.A.jvH.vaGsIB@albercik>  <200808242334.05993.rjw@sisk.pl> <1220261720.2982.51.camel@pmac.infradead.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1220261720.2982.51.camel-ZP4jZrcIevRpWr+L1FloEB2eb7JE58TQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

David Woodhouse wrote:
> On Sun, 2008-08-24 at 23:34 +0200, Rafael J. Wysocki wrote:
>> On Saturday, 23 of August 2008, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.26.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11355
>>> Subject		: Regression in 2.6.27-rc2 when cross-building the kernel
>>> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>>> Date		: 2008-08-16 2:38 (8 days old)
>>> References	: http://marc.info/?l=linux-kernel&m=121885432118368&w=4
>> As I wrote in the Bugzilla, I'm seeing a related problem.
>>
>> Namely, I build kernels on one box, with 'make O=<target>', then I mount
>> <target> on another one over NFS, 'cd' to it and try to install the kernel
>> modules with 'make modules_install'.  This results in 'HOSTCC firmware/ihex2fw'
>> and 'fatal error: ...: Read-only file system'.  It's readily reproducible.
>>
>> Commenting out line 1130 of Makefile
>> ("$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.fwinst obj=firmware __fw_modinst")
>> obviously helps, so it looks like Makefile.fwinst needs fixing.
> 
> I don't like this much, but it should do the trick... please confirm.

Yes, the patch fixes the problem. Thanks.

Larry
