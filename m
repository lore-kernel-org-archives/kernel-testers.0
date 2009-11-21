From: Norbert Preining <preining@logic.at>
Subject: Re: [Bug #14618] OOM killer, page fault
Date: Sat, 21 Nov 2009 11:40:09 +0100
Message-ID: <20091121104009.GB16642@gamma.logic.tuwien.ac.at>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.nXG.-SdALB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753033AbZKUKkJ@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <xXQGFmujPl.A.nXG.-SdALB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu@j>

Hi everyone,

(as usual, please cc, thanks)

not that I ask for reopen ..

On Mo, 16 Nov 2009, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14618
> Subject		: OOM killer, page fault

Well, it hit with OOM although I had 60+% in cache.

I cached some more output
/proc/meminfo, vmstat, zoneinfo pklus the dmesg log

I have no idea how to read all that, but it looks like there should be
enough mem free. In fact I only had firefox and some gnome terminals 
running.

Well, hope you see something in that.

BTW, that is 2.6.32-rc8 with the patches for showing some more infos
in proc:
0001-Add-recent-rotated-scanned-info-to-proc-zoneinfo.patch
proc-filecache-v2.patch


Best wishes

Norbert

-------------------------------------------------------------------------------
Dr. Norbert Preining                                        Associate Professor
JAIST Japan Advanced Institute of Science and Technology   preining@jaist.ac.jp
Vienna University of Technology                               preining@logic.at
Debian Developer (Debian TeX Task Force)                    preining@debian.org
gpg DSA: 0x09C5B094      fp: 14DF 2E6C 0307 BE6D AD76  A9C0 D2BF 4AA3 09C5 B094
-------------------------------------------------------------------------------
GLEMENUILT (n.)
The kind of guilt which you'd completely forgotten about which comes
roaring back on discovering an old letter in a cupboard.
			--- Douglas Adams, The Meaning of Liff
