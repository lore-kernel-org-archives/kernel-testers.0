From: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Subject: Re: [Bug #11231] gspca_zc3xx oops - 2.6.27-rc1
Date: Mon, 11 Aug 2008 21:11:01 +0530
Message-ID: <20080811154101.GA1667@debian>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.g4B.pDjnIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent:sender;
        bh=f4NiyZ6wJddfSuHO3FDXRloqC47rTJLNfwdPHkS+0y8=;
        b=Xq/o6j1WvbgFeQDZzX3Wr4PHDMD+GH5ewSdboDJVTmFaILagtAGlyOY446CbeYdAhQ
         DkWIyOfg8G20l9QrGnhuicJ8OOze+qD1ALi+xe+aOavRoaGuAo6q2lO7VL5hUlF7AWR1
         Krt8g9vT77SxxKqd9CD19YJPdDT1mo84nYsYA=
Content-Disposition: inline
In-Reply-To: <cX_-nNkxKaF.A.g4B.pDjnIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Aug 10, 2008 at 12:43:51AM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11231
> Subject		: gspca_zc3xx oops - 2.6.27-rc1
> Submitter	: Parag Warudkar <parag.warudkar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-08-02 16:22 (8 days old)
> References	: http://marc.info/?l=linux-kernel&m=121769418920774&w=4
> Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121774908213124&w=4

This can be closed.  The patch is now in mainline as
fcf5cb2406827fc9d3f3fe260ac883ef72b8bac0 ("V4L/DVB (8605): gspca: Fix of
gspca_zc3xx oops - 2.6.27-rc1").

Rabin
