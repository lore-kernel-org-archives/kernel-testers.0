From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13819] system freeze when switching to console
Date: Tue, 8 Sep 2009 10:00:07 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0909080943030.7458@localhost.localdomain>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>  <Vm51Upp4EV.A.r-D.mgBpKB@chimera> <1252427375.14735.130.camel@rc-desk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1252427375.14735.130.camel@rc-desk>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, "Ma, Ling" <ling.ma-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org



On Tue, 8 Sep 2009, reinette chatre wrote:

> On Sun, 2009-09-06 at 10:24 -0700, Rafael J. Wysocki wrote:
> > Please verify if it still should be listed and let me know
> > (either way).
> 
> Issue is still present in 2.6.31-rc8.

Is there any chance that you could connect a serial line to the machine? 
Your report about blinking keyboard led's means that there's an oops, but 
since the display isn't in textmode (and the oops obviously happens when 
trying to enter it), we don't know what it is.

A serial line (along with a kernel compiled with serial console support, 
of course, and a kernel command line option like "console=ttyS0,115400 
console=tty0") would get that. You'd just need another machine with a 
terminal program like minicom..

The network console could also work out, but serial lines tend to be more 
reliable if you have them. But in the absense of serial lines, see the
Documentation/networking/netconsole.txt file for some details. The setup 
is more complicated, but on the other hand it's a lot more dynamic, and in 
your case - since the box works until you try to switch to text-mode, I 
suspect the network console dynamic run-time setup would be easy for you 
to use.

(For other examples of using netconsole with that dynamic mode, just 
google for "sys/kernel/config/netconsole" and you'll find a number of docs 
that explain how to find the MAC address for setup etc).

		Linus
