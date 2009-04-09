From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Regression: First hibernation attempt fails
Date: Thu, 09 Apr 2009 12:13:03 +0100
Message-ID: <49DDD83F.507@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=aLGQc2jjIgrbhM5kAmTC/w8BbtIqFi85/HVmD6ulFi4=;
        b=Oqv5F0t+ikJXTr0yngqZLiWgXN1tKp3K4OaPW9GhYJp39q0I/o/X5gZ9HB2GQfixOI
         X9Im5Ih9q0IKkjIyei5uXxJk90q7QdospGfAscZFr/SfI0z92/mai2BQU8PLRm0YJZog
         NpWpndYjFJZCJbZfEkbFidqNuO5YTHC90ngtU=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Yet another issue in 2.6.30-rc1 which was not present in 2.6.29 :-).  I
wonder if it rings any bells?

On my laptop (EEE 4G), the first attempt at hibernation fails. 
Subsequent attempts succeed.

If I use s2disk as normal, I see "snapshotting system", then before it
gets to write out the image, it aborts and switches back to X.   I can't
see any error message, even if I check the log with "dmesg".

If I use "echo disk > /sys/power/state", echo reports the error "Cannot
allocate memory".

This only happens if I've logged in to X first.  In fact, I narrowed it
down to gnome-power-manager.  If I kill gnome-power-manager beforehand,
then it doesn't happen.

Alan
