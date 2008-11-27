From: Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [PATCH 4/6] fs: Introduce a per_cpu nr_inodes
Date: Thu, 27 Nov 2008 10:32:57 +0100
Message-ID: <1227778377.4454.1299.camel@twins>
References: <Pine.LNX.4.64.0811201727070.9089@quilx.com>
	 <20081121083044.GL16242@elte.hu> <49267694.1030506@cosmosbay.com>
	 <20081121.010508.40225532.davem@davemloft.net>
	 <4926AEDB.10007@cosmosbay.com> <4926D022.5060008@cosmosbay.com>
	 <20081121152148.GA20388@elte.hu> <4926D39D.9050603@cosmosbay.com>
	 <20081121153453.GA23713@elte.hu>  <492DDC91.3020503@cosmosbay.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <netdev-owner@vger.kernel.org>
In-Reply-To: <492DDC91.3020503@cosmosbay.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Dumazet <dada1@cosmosbay.com>
Cc: Ingo Molnar <mingo@elte.hu>, David Miller <davem@davemloft.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, Mike Galbraith <efault@gmx.de>, Linux Netdev List <netdev@vger.kernel.org>, Christoph Lameter <cl@linux-foundation.org>, Christoph Hellwig <hch@infradead.org>, travis <travis@sgi.com>

On Thu, 2008-11-27 at 00:32 +0100, Eric Dumazet wrote:
> Avoids cache line ping pongs between cpus and prepare next patch,
> because updates of nr_inodes metric dont need inode_lock anymore.
> 
> (socket8 bench result : 25s to 20.5s)
> 
> Signed-off-by: Eric Dumazet <dada1@cosmosbay.com>
> ---

> @@ -96,9 +96,40 @@ static DEFINE_MUTEX(iprune_mutex);
>   * Statistics gathering..
>   */
>  struct inodes_stat_t inodes_stat;
> +static DEFINE_PER_CPU(int, nr_inodes);
>  
>  static struct kmem_cache * inode_cachep __read_mostly;
>  
> +int get_nr_inodes(void)
> +{
> +	int cpu;
> +	int counter = 0;
> +
> +	for_each_possible_cpu(cpu)
> +	    counter += per_cpu(nr_inodes, cpu);
> +	if (counter < 0)
> +		counter = 0;
> +	return counter;
> +}

It would be good to get a cpu hotplug handler here and move to
for_each_online_cpu(). People are wanting distro's to be build with
NR_CPUS=4096.

