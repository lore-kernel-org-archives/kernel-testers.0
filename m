From: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Subject: Fix dead lock in cpufreq for CPU hotplug and suspend for 2.6.30.stable
Date: Thu, 25 Jun 2009 16:01:23 +0200
Message-ID: <1245938485-12663-1-git-send-email-trenn@suse.de>
References: <20090623193215.GA31374@elte.hu>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090623193215.GA31374-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-soeCzev1AWYdnm+yROfE0A@public.gmane.org
Cc: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org

This is about the dead locks happening since cancel_delayed_work_sync()
got added to the ondemand/conservative governors.

I truncated a bit the CC list to most important people and mailing lists.

The patch is intended for 2.6.30 stable, but both patches together did
not get tested yet. If someone could verify this working now that
would be great.

I first wanted to provide something for .31 and then backport, but
it wouldn't patch clean anymore anyway and I don't want to wait
any longer.

Rafael: These should solve the regression bug:
http://bugzilla.kernel.org/show_bug.cgi?id=13475

