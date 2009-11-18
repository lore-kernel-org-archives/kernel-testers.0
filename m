From: tytso-3s7WtUTddSA@public.gmane.org
Subject: Re: [Bug #14354] Bad corruption with 2.6.32-rc1 and upwards
Date: Tue, 17 Nov 2009 19:11:42 -0500
Message-ID: <20091118001142.GA3816@thunk.org>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
 <xXQGFmujPl.A.6w.YUdALB@chimera>
 <20091117020202.GA23066@mit.edu>
 <200911172323.11224.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200911172323.11224.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Aneesh Kumar K.V" <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Frank Mayhar <fmayhar-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Holger Freyther <zecke-MQnelBtSfJRAfugRpC6u6w@public.gmane.org>

On Tue, Nov 17, 2009 at 11:23:11PM +0100, Rafael J. Wysocki wrote:
> 
> I wasn't quite sure what the status was, because there was some
> activity in the bug entry after it had been marked as resolved.

Yeah, the actual regression had been resolved (by changing the
default), but the root cause was due to the fact that not enough
people had done proper power-fail testing for the journal_checksum,
even though the code had been in the kernel for a very long time.  The
discussion afterwards was focused around fixing those problems so we
could make journal_checksum be the default at some point in the future.

      	   		       	   	      - Ted
