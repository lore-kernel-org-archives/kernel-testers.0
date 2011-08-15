From: Avi Kivity <avi@redhat.com>
Subject: Re: [Bug #39412] Win Vista and Win2K8 guests' network breaks down
Date: Mon, 15 Aug 2011 06:38:34 -0700
Message-ID: <4E49215A.5080103@redhat.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera> <bkwpSnItbJM.A.nx.VNCSOB@chimera> <CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kvm-owner@vger.kernel.org>
In-Reply-To: <CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com>
Sender: kvm-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Pekka Enberg <penberg@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Jay Ren <yongjie.ren@intel.com>, stefanha@linux.vnet.ibm.com, KVM General <kvm@vger.kernel.org>

On 08/15/2011 03:33 AM, Pekka Enberg wrote:
> On Sun, Aug 14, 2011 at 10:07 PM, Rafael J. Wysocki<rjw@sisk.pl>  wrote:
> >  This message has been generated automatically as a part of a report
> >  of regressions introduced between 2.6.39 and 3.0.
> >
> >  The following bug entry is on the current list of known regressions
> >  introduced between 2.6.39 and 3.0.  Please verify if it still should
> >  be listed and let the tracking team know (either way).
> >
> >
> >  Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=39412
> >  Subject         : Win Vista and Win2K8 guests' network breaks down
> >  Submitter       : Jay Ren<yongjie.ren@intel.com>
> >  Date            : 2011-07-15 15:31 (31 days old)
>
> The bugzilla report claims that this commit fixes the regression:
>
> http://git.kernel.org/?p=virt/kvm/kvm.git;a=commitdiff;h=e72ef590a3ef3047f6ed5bcb8808a9734f6c4b32
>
> The commit, however, is not in mainline nor does it seem to be tagged
> for -stable.

That commit is completely unrelated.

-- 
I have a truly marvellous patch that fixes the bug which this
signature is too narrow to contain.

