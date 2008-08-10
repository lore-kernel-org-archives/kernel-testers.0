From: "Parag Warudkar" <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11277] BUG kmalloc-64: Object already free
Date: Sat, 9 Aug 2008 20:33:57 -0400
Message-ID: <82e4877d0808091733u34bc4a3dl76dbca4737543c06@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.TX.0CjnIB@albercik>
	 <dd18b0c30808091725s5974befdp4b57fe54d3d6e255@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=AaKOmuFFKweaWXqmqVxwrn3bg4nBLZ4AgZsXM+RANI4=;
        b=ZgTCcOpylElaKDR8ev/6YbtuU/2KqAhVWnmNeJBnCZXDHMKdc7n9BSsOP3hotda69C
         lm8unp91baDfgR92OeuTVR59ggV8KMBdMAwS68XNCpsMTqKpMNUFAqBF5C5IHy2AY+mh
         X+4+AJgyEMd/n/DNjJZ15KM1qolipvgnuWJg0=
In-Reply-To: <dd18b0c30808091725s5974befdp4b57fe54d3d6e255-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 9, 2008 at 8:25 PM, Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11277
>> Subject         : BUG kmalloc-64: Object already free
>> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date            : 2008-08-06 21:21 (4 days old)
>> References      : http://marc.info/?l=linux-kernel&m=121805862910241&w=4
>> Handled-By      : Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Patch           : http://marc.info/?l=linux-kernel&m=121814402609514&w=4
>>
>>
>>
>
> I think this bug report can be closed.
>

Patch is not in mainline yet - should be closed after Andrew pushes it to Linus.

Parag
