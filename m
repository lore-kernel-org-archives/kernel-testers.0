From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13180] 2.6.30-rc2: WARNING at i915_gem.c for
 i915_gem_idle
Date: Mon, 27 Apr 2009 13:18:07 -0700
Message-ID: <20090427131807.1999058c@hobbes>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	<Fg2zLW93smL.A.hKC.tc48JB@chimera>
	<20090427093847.778dcd81@hobbes>
	<49F61143.9030501@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760427AbZD0UX2@vger.kernel.org>
In-Reply-To: <49F61143.9030501@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Niel Lambrechts <niel.lambrechts@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, eric@anholt.net

On Mon, 27 Apr 2009 22:10:43 +0200
Niel Lambrechts <niel.lambrechts@gmail.com> wrote:
> Hi Jesse,
> 
> Sure thing - and to be complete I retried with the latest git kernel,
> along with the latest Xorg updates from the OPENSUSE 11.1 Xorg
> repository.
> 
> On my system the default displaymanager configuration contains
> DISPLAYMANAGER_RANDR_MODE_auto="1024x768_60 64.11 1024 1080 1184 1344
> 768 769 772 795 -HSync +Vsync"
> 
> With this setting running in KMS+UXA, kdm starts up with a garbled
> screen, and I soon get a soft lock-up after trying to blindly
> entering a username/password. With any other setting, I got the mouse
> cursor but soon followed by a black screen and soft lock-up (No
> activity from caps-lock, but Alt-SysRq still worked). These settings
> work fine without KMS when just using EXA.

Ooh that sounds bad.  Can you check out
http://intellinuxgraphics.org/how_to_report_bug.html and file a bug at
freedesktop.org for this?  That way we won't lose it, and we'll have
all the info in one place.

Eric, do you know of any changes recently that might affect the
gem_idle warning Niel sees here?  Seems like in any UMS config the GEM
lists should be clear at VT switch time...

-- 
Jesse Barnes, Intel Open Source Technology Center
