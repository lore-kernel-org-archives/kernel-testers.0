From: "=?ISO-8859-1?Q?Ilpo_J=E4rvinen?=" <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from	2.6.22
 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 16:36:31 +0300 (EEST)
Message-ID: <Pine.LNX.4.64.0809171629550.1034@wrl-59.cs.helsinki.fi>
References: <1221306287.5213.111.camel@marge.simson.net> 
 <48CD1D25.9080301@linux-foundation.org>  <1221421907.4597.24.camel@marge.simson.net>
  <1221475440.4784.39.camel@marge.simson.net>  <1221568105.5020.17.camel@marge.simson.net>
  <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi> 
 <1221626391.5043.13.camel@marge.simson.net>  <1221627676.5125.3.camel@marge.simson.net>
 <20080917104044.GC18764@elte.hu>  <1221651701.5102.17.camel@marge.simson.net>
 <20080917124943.GA7738@elte.hu> <1221657111.5511.14.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221657111.5511.14.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 17 Sep 2008, Mike Galbraith wrote:

> On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
> 
> > git log --pretty=format:"%h: %s" 2069f45..847106f | grep -viE \
> > 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|paride|pktcdvd|filter|cdrom|drm'
> > 
> > gives us:
> > 
> >  7daf705: Start using the new '%pS' infrastructure to print symbols
> >  6f0f0fd: security: remove register_security hook
> >  93cbace: security: remove dummy module fix
> >  5915eb5: security: remove dummy module
> >  b478a9f: security: remove unused sb_get_mnt_opts hook
> >  32502b8: splice: fix generic_file_splice_read() race with page invalidation
> >  8b3d356: ramfs: enable splice write
> >  a144ff0: xen: Avoid allocations causing swap activity on the resume path
> > 
> > which really only leaves that security commit your bisection fingered. 
> > Which _slightly_ raises its likelyhood of being implicated. Structure 
> > size changes can move two formerly far-apart netperf-relevant symbols on 
> > the same cacheline, which can start cache ping-pong-ing badly.
> 
> I sure hope it's something like ping-pong, it's driving me NUTS.

How about dividing the problem to smaller blocks then by restoring 
parts of the change...


-- 
 i.
