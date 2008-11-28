From: Ingo Molnar <mingo@elte.hu>
Subject: Re: [PATCH 0/6] fs: Scalability of sockets/pipes
	allocation/deallocation on SMP
Date: Fri, 28 Nov 2008 19:03:18 +0100
Message-ID: <20081128180318.GL10487@elte.hu>
References: <Pine.LNX.4.64.0811201727070.9089@quilx.com> <20081121083044.GL16242@elte.hu> <49267694.1030506@cosmosbay.com> <20081121.010508.40225532.davem@davemloft.net> <4926AEDB.10007@cosmosbay.com> <4926D022.5060008@cosmosbay.com> <20081121152148.GA20388@elte.hu> <4926D39D.9050603@cosmosbay.com> <20081121153453.GA23713@elte.hu> <492DDB6A.8090806@cosmosbay.com>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <492DDB6A.8090806@cosmosbay.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Dumazet <dada1@cosmosbay.com>
Cc: David Miller <davem@davemloft.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, Mike Galbraith <efault@gmx.de>, Peter Zijlstra <a.p.zijlstra@chello.nl>, Linux Netdev List <netdev@vger.kernel.org>, Christoph Lameter <cl@linux-foundation.org>, Christoph Hellwig <hch@infradead.org>


* Eric Dumazet <dada1@cosmosbay.com> wrote:

> Hi all
>
> Short summary : Nice speedups for allocation/deallocation of sockets/pipes
> (From 27.5 seconds to 1.6 second)

Wow, that's incredibly impressive! :-)

	Ingo
