From: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
Subject: Re: [Bug #14942] gkrellm no longer shows all the temperatures on
 thinkpad x60
Date: Tue, 29 Dec 2009 20:58:31 -0200
Message-ID: <20091229225831.GA13358@khazad-dum.debian.net>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
 <NJVdobuNFNK.A.MHG.BnhOLB@chimera>
 <20091229181356.GA30466@khazad-dum.debian.net>
 <200912292257.55961.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=messagingengine.com; h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; s=smtpout; bh=8STh6rOtIxyAHIbZQ7lnjROhxJM=; b=G9BPTZIzw7AaYTnlNv5eu/3PRodZfl5oTQVzRWCaGKvC9DFFXjySHGme7rFC2VzuQrlmQtgGbXBnTIYq5SZiKZ524fJI+G7QYZKlpAN8YMbA/pmdphJQ1YVUFvemPUyDcymqltFFp3L1G6VQO9W9rSe4I2weFoYjvm0KGrXe0M0=
Content-Disposition: inline
In-Reply-To: <200912292257.55961.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>

On Tue, 29 Dec 2009, Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14942
> > > Subject		: gkrellm no longer shows all the temperatures on thinkpad x60
> > > Submitter	: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> > > Date		: 2009-12-27 21:57 (3 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=126195107005565&w=4
> > > Handled-By	: Henrique de Moraes Holschuh <hmh-N3TV7GIv+o9fyO9Q7EP/yw@public.gmane.org>
> > 
> > Patch already in acpi-test, waiting push to mainline.
> 
> Great, thanks for the update.
> 
> Is there a link to the patch so that I can put it into the bug entry?

http://patchwork.kernel.org/patch/69809/

-- 
  "One disk to rule them all, One disk to find them. One disk to bring
  them all and in the darkness grind them. In the Land of Redmond
  where the shadows lie." -- The Silicon Valley Tarot
  Henrique Holschuh
