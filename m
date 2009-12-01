From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Bisected: s2disk (uswsusp only) hangs just before poweroff
Date: Tue, 01 Dec 2009 19:59:40 +0000
Message-ID: <4B1575AC.6080904@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=XEIEjAf6WvlCA+0JJiCKNu+1QWD3BIXLC6FNvbu4I9c=;
        b=VQgTF4K6lQZ4tyNTlQczkUn6gHO1ox5g1wPTk2zc/sJrN9VULhI7G69CGjhQJEZkOd
         Ydw92eBs5h3Qkz7eWnkjClpdL6oelso3GpsFgMqkuQcGb0WwvrRcdeLDecI/k820FFyF
         icfx+DgAzGGiHy8xl6cZUI77eN07PwdSQZKFs=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Cc: linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

Hi

Suspend to disk is (sometimes) hanging for me in 2.6.32-rc.  I finally 
got around to bisecting it, which blamed the following commit by Mel:

5f8dcc2 "page-allocator: split per-cpu list into one-list-per-migrate-type"

I was able to confirm this by reverting the commit, which fixed the 
hang.  I had to revert one other commit first to avoid a conflict:

a6f9edd "page-allocator: maintain rolling count of pages to free from 
the PCP"

-- detail --

When I suspend my EeePc 701 to disk, it sometimes hangs after writing 
out the hibernation image.  The system is still able to resume from this 
image (after working around the hang by pressing the power button). 

This is specific to s2disk from the uswsusp package (which is now 
installed by default on debian unstable).  It doesn't happen if I 
uninstall uswsusp and use the in-kernel suspend instead.

The hang doesn't happen if I boot with "init=/bin/bash" and run s2disk.  
Nor does it happen if I boot normally, then switch to single user mode 
("telinit 12").

It only happens if I've logged in to KDE.  In the past, this has 
indicated a problem in a network driver, since NetworkManager only made 
a connection once I logged in.  But it still hangs if I remove both 
ath5k and atl2 before I log into KDE.  (I actually tried removing as 
many modules as possible: atl2, ath5k, usbcore, snd-hda-intel, psmouse, 
pcspkr, battery, ac, themal, fan, and eeepc-laptop).  Perhaps it's 
something to do with the size of the hibernation image.

-- confidence in the bisection result --

The randomness was a bit annoying, but it's not too bad.  The hang would 
normally show up in the first 3 hibernation cycles; I don't remember 
having to wait more than 6.

I wrote a script to do s2disk + rtcwake so I could leave it testing 
without constantly hitting the power button.  This let me test 
2.6.32-rc8 with the reverts for at least 20 hibernation cycles.

Regards
Alan
