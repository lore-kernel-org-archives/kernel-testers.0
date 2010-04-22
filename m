From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Thu, 22 Apr 2010 20:26:40 +0300
Message-ID: <4BD086D0.9090309@cs.helsinki.fi>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh> <alpine.DEB.2.00.1004221045270.1204@router.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1004221045270.1204-sBS69tsa9Uj/9pzu0YdTqQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

Christoph Lameter wrote:
> On Tue, 20 Apr 2010, Rafael J. Wysocki wrote:
> 
>> The following bug entry is on the current list of known regressions
>> from 2.6.33.  Please verify if it still should be listed and let the tracking team
>> know (either way).
> 
> I have not been able to reproduce it so far.

So what are our options? We can revert the SLUB conversion patch for now 
but I still can't see what's wrong with it...

			Pekka
