From: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
Subject: Re: [Bug #14270] Cannot boot on a PIII Celeron
Date: Fri, 02 Oct 2009 13:13:18 +0400
Message-ID: <4AC5C42E.9070909@msgid.tls.msk.ru>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>	 <COE24pZSBH.A.7sH.xMTxKB@chimera> <aa79d98a0910020130p4d3c5b5fh9597ea435db7f872@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <aa79d98a0910020130p4d3c5b5fh9597ea435db7f872-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Cyrill Gorcunov wrote:
> On 10/1/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.30 and 2.6.31.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
>> be listed and let me know (either way).
> 
> Michael has been asked to bisect it (if possible). I cant reproduce it
> in kvm unfortunately.

Yes, and that's what I'll be trying to do shortly.
I had other issues to sort out and wasn't able to
get to it in few last days.

Also I've a few other suspects.  For example, in this .31
config I changed from bzip to lzma compression - and that's
where (or near) kernel is rebooting.

/mjt

>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14270
>> Subject		: Cannot boot on a PIII Celeron
>> Submitter	: Michael Tokarev <mjt-XAri/EZa3C4vJsYlp49lxw@public.gmane.org>
>> Date		: 2009-09-28 15:26 (4 days old)
>> References	: http://marc.info/?l=linux-kernel&m=125415160524110&w=4
>>
>>
>>
