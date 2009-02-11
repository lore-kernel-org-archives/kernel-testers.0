From: =?ISO-8859-1?Q?Thomas_Hellstr=F6m?= <thomas@shipmail.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Wed, 11 Feb 2009 08:10:58 +0100
Message-ID: <49927A02.9020006@shipmail.org>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>	<sWhNs83kKPE.A.4cG.E30jJB@chimera>
	<20090210223711.GA6809@google.com>
	<1234305716.32506.10.camel@gaiman>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.sourceforge.net>
In-Reply-To: <1234305716.32506.10.camel@gaiman>
List-Id: <kernel-testers.vger.kernel.org>
List-Unsubscribe: <https://lists.sourceforge.net/lists/listinfo/dri-devel>,
	<mailto:dri-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=dri-devel>
List-Post: <mailto:dri-devel@lists.sourceforge.net>
List-Help: <mailto:dri-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/dri-devel>,
	<mailto:dri-devel-request@lists.sourceforge.net?subject=subscribe>
Errors-To: dri-devel-bounces@lists.sourceforge.net
To: Eric Anholt <eric@anholt.net>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Dave Airlie <airlied@linux.ie>, "Michael S. Tsirkin" <m.s.tsirkin@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, dri-devel@lists.sourceforge.net

Eric Anholt wrote:
> On Wed, 2009-02-11 at 00:37 +0200, Michael S. Tsirkin wrote:
>   
>> Dave, dri guys,
>> Could you take a look at this circular dependency please (below)?  I
>> observe it when suspending laptop with radeon drm loaded and with
>> lockdep enabled. It seems that the root of the problem is that
>> various vm ops such as drm_vm_open, drm_mmap) are called with mm
>> semaphore taken, and take dev->struct_mutex. On the other hand,
>> drm_rmmap_locked is called with dev->struct_mutex, and calls mtrr_del
>> which depends on mm semaphore indirectly.
>>
>> What do you think?
>>     
>
> Yes, there are real lock inversions now due to the GTT mmap code.  It's
> going to be a pain to fix (I tried getting the mmap_sem -> struct_mutex
> path to go away, but the fact that mmap_sem is held over the fault
> handler pretty much kills that).  It's high on the list, though.
>   
Shouldn't it be possible to relax this given that in the fault() 
handler, the mmap_sem() is taken in read mode only. This means that it 
should be deadlock-safe (but still a little ugly) to take the mmap_sem() 
in read mode when the struct mutex is held.

Another quick way to fix potential deadlocks, would be to take the 
struct mutex in the following way in fault():

if (!mutex_trylock(&dev->struct_mutex)) {
      needs_resched();
      return VM_FAULT_NOPAGE;
}

/Thomas

>   
> ------------------------------------------------------------------------
>
> ------------------------------------------------------------------------------
> Create and Deploy Rich Internet Apps outside the browser with Adobe(R)AIR(TM)
> software. With Adobe AIR, Ajax developers can use existing skills and code to
> build responsive, highly engaging applications that combine the power of local
> resources and data with the reach of the web. Download the Adobe AIR SDK and
> Ajax docs to start building applications today-http://p.sf.net/sfu/adobe-com
> ------------------------------------------------------------------------
>
> --
> _______________________________________________
> Dri-devel mailing list
> Dri-devel@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/dri-devel
>   




------------------------------------------------------------------------------
Create and Deploy Rich Internet Apps outside the browser with Adobe(R)AIR(TM)
software. With Adobe AIR, Ajax developers can use existing skills and code to
build responsive, highly engaging applications that combine the power of local
resources and data with the reach of the web. Download the Adobe AIR SDK and
Ajax docs to start building applications today-http://p.sf.net/sfu/adobe-com
--
