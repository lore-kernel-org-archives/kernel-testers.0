From: Chuck Ebbert <cebbert@redhat.com>
Subject: Re: [Bug #13949] Cryptoloop stuck I/O issue on partition or
 loopback device
Date: Wed, 9 Sep 2009 17:26:47 -0400
Message-ID: <20090909172647.29e52b47@dhcp-100-2-144.bos.redhat.com>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
	<20090907152553.GA21768@infradead.org>
	<alpine.DEB.2.00.0909081029050.7636@p34.internal.lan>
	<200909082105.13124.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754401AbZIIV2K@vger.kernel.org>
In-Reply-To: <200909082105.13124.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>, Christoph Hellwig <hch@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Felix Blyakher <felixb@sgi.com>

On Tue, 8 Sep 2009 21:05:13 +0200
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> On Tuesday 08 September 2009, Justin Piszcz wrote:
> > Unsure how to edit on the kernel bugtracker but updating this thread to 
> > correct the subject.
> 
> I've changed the subject and moved the bug to I/O & storage.
> 

Should we just revert that barrier support in loopback, like I
suggested in bugzilla?
