From: "=?ISO-8859-1?Q?Ilpo_J=E4rvinen?=" <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release	from	2.6.22
 -&gt; 2.6.28
Date: Thu, 18 Sep 2008 10:58:45 +0300 (EEST)
Message-ID: <Pine.LNX.4.64.0809181050040.1034@wrl-59.cs.helsinki.fi>
References: <1221306287.5213.111.camel@marge.simson.net> 
 <48CD1D25.9080301@linux-foundation.org>  <1221421907.4597.24.camel@marge.simson.net>
  <1221475440.4784.39.camel@marge.simson.net>  <1221568105.5020.17.camel@marge.simson.net>
  <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi> 
 <1221626391.5043.13.camel@marge.simson.net>  <1221627676.5125.3.camel@marge.simson.net>
 <20080917104044.GC18764@elte.hu>  <1221651701.5102.17.camel@marge.simson.net>
 <20080917124943.GA7738@elte.hu>  <1221657111.5511.14.camel@marge.simson.net>
  <Pine.LNX.4.64.0809171629550.1034@wrl-59.cs.helsinki.fi> 
 <1221659858.8818.13.camel@marge.simson.net>  <1221721970.5003.9.camel@marge.simson.net>
 <1221722733.5149.6.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221722733.5149.6.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 18 Sep 2008, Mike Galbraith wrote:

> On Thu, 2008-09-18 at 09:12 +0200, Mike Galbraith wrote:
> 
> > 1e65e841bb5584136ed6047c55cf77532afbbb55 is first bad commit
> > commit 1e65e841bb5584136ed6047c55cf77532afbbb55
> > Author: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
> > Date:   Wed Sep 17 14:55:50 2008 +0200
> > 
> >     Revert "Revert "block: export "ro" attribute""
> > 
> >     This reverts commit 2c8803af5c1bf41200167f29349f7f1396683a51.
> 
> BTW, the reason it's revert revert is that I reverse bisected the revert
> tree yesterday, and it emitted the same darn result.  I immediately said
> "yeah right, ya screwed up", and created the revert revert tree to make
> sure I couldn't fumble negation.

:-)

gcc compiling something slightly differently would be a nice theory but 
it sort of breaks down now as this commit touches only one .c file...
In the past when I did some static inline .h -> .c uninline sizing tests
I noticed that some changes happened also in places which should have been 
quite much unrelated. Though all the changes were minor anyway (in the 
places I did look), e.g., routed the conditional paths slightly 
differently and added one xor clear reg.

-- 
 i.
