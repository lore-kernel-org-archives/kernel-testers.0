From: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Mon, 27 Apr 2009 13:39:06 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0904271337450.31916@qirst.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>  <egHshlwQQFE.A.KjC.JpE9JB@chimera>  <alpine.DEB.2.00.0904261314430.18988@chino.kir.corp.google.com> <84144f020904270152o6567e84cj914934120315bf90@mail.gmail.com> <alpine.DEB.1.10.0904271000200.16119@qirst.com>
 <Pine.LNX.4.64.0904271849590.2455@galaxy.riz.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0904271849590.2455-Bi0AbNG1eu+dHxVRc3HrWQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bart <mmx-G/jkD+u3s4s@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, 27 Apr 2009, Bart wrote:

> Apr 27 16:57:30 fs kernel: [   96.446708] slab error in verify_redzone_free():
> cache `size-128': memory outside object was overwritten

Allright so a write after or before a 128 byte kmalloc object. Can
you switch to the SLUB allocator so that we can get memory dumps of
the corruption which will help to diagnose this further?
