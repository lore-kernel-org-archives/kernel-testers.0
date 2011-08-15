From: Avi Kivity <avi@redhat.com>
Subject: Re: [Bug #39412] Win Vista and Win2K8 guests' network breaks down
Date: Mon, 15 Aug 2011 12:07:40 -0700
Message-ID: <4E496E7C.30303@redhat.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera> <bkwpSnItbJM.A.nx.VNCSOB@chimera> <CAOJsxLEToaQe3DrhUQx5FizMnzATxwG8XGCPwZpRFpuBQpq1ug@mail.gmail.com> <4E49215A.5080103@redhat.com> <1313416232.32391.13.camel@jaguar> <4E4928A1.1050104@redhat.com> <20110815163142.0182ce35@schatten.dmk.lab>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20110815163142.0182ce35@schatten.dmk.lab>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Florian Mickler <florian@mickler.org>
Cc: Pekka Enberg <penberg@kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Jay Ren <yongjie.ren@intel.com>, stefanha@linux.vnet.ibm.com, KVM General <kvm@vger.kernel.org>

On 08/15/2011 07:31 AM, Florian Mickler wrote:
> On Mon, 15 Aug 2011 07:09:37 -0700
> Avi Kivity<avi@redhat.com>  wrote:
>
> >  On 08/15/2011 06:50 AM, Pekka Enberg wrote:
> >  >  Heh, sorry about that, that's the commit SHA mentioned in the above
> >  >  bugzilla report. :-)
> >  >
> >  >
> >
> >  Think of it as 'git bisect good' input, rather than output.
> >
>
> Can you post a comment to the bug when Linus pulled that tree?

Most likely kvm.git got that commit from Linus - I don't think the fix 
came from kvm.git.

-- 
I have a truly marvellous patch that fixes the bug which this
signature is too narrow to contain.
