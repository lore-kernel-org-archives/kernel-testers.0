From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #11178] Secondary hard drive fails during both hibernation and resume.
Date: Thu, 7 Aug 2008 08:53:41 -0700
Message-ID: <200808070853.42957.jbarnes@virtuousgeek.org>
References: <cbItfVMShGI.A.olC.UMLlIB@albercik> <5ZeQ4vXWqRC.A.q2E.4NLlIB@albercik> <48956E15.6070409@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754546AbYHGPyG@vger.kernel.org>
In-Reply-To: <48956E15.6070409@tuffmail.co.uk>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Matthew Wilcox <matthew@wil.cx>, Matthew Wilcox <willy@linux.intel.com>

On Sunday, August 3, 2008 1:36 am Alan Jenkins wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed
> > and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11178
> > Subject		: Secondary hard drive fails during both hibernation and resume.
> > Submitter	: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
> > Date		: 2008-07-30 04:53 (4 days old)
> > Handled-By	: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
> > Patch		: http://bugzilla.kernel.org/attachment.cgi?id=17043&action=view
>
> Please keep listed.
>
> The problem and patch are recently confirmed by Hugh Dickins (on LKML)
> and Dionisus Torimens (bugzilla duplicate).

I took a look at this yesterday.  I don't think this is the only thing wrong 
with the MSI code at this point (there are a couple of other improvements and 
potential problems there), but your fix looks good.  I just applied it to my 
for-linus tree.  I'll ask Linus to pull after it's had a little time in 
linux-next.

Thanks,
Jesse
