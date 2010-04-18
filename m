From: Sanjoy Mahajan <sanjoy@MIT.EDU>
Subject: Re: [Bug #15544] black screen upon S3 resume, syslog has "render error" and "page table error"
Date: Sat, 17 Apr 2010 22:19:30 -0400
Message-ID: <E1O3K6c-0000ly-GA@approx.mit.edu>
References: <201004092152.21306.rjw@sisk.pl>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 09 Apr 2010 21:52:21 +0200."
             <201004092152.21306.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

Just 10 minutes ago I had a similar or maybe an identical problem: When
the laptop woke up from (S3) sleep, the screen was very dim and almost
black, although everything else seemed normal -- e.g. I could use my Fn
key bindings in twm, switch windows, type, switch to a console, etc..

The screen was so dim that I could barely see the outlines of the emacs
and xpdf windows.  Restarting xdm (and therefore the X server) didn't
restore the brightness.  But it probably is not a hardware problem,
because rebooting the laptop restored the brightness to normal.

-Sanjoy

`Until lions have their historians, tales of the hunt shall always
 glorify the hunters.'  --African Proverb
