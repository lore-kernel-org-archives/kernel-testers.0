From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: "floppy: fix hibernation" causes error on resume from ram
Date: Sat, 18 Jul 2009 19:06:54 +0100
Message-ID: <4A620F3E.8080900@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=8d40GHt8zauyKUnaQjIjhH1JFbFR+39ZxjLIXVFoZs4=;
        b=oy7u9pw2KpT+0bEAyNg3DlDLJkS/k70R2QVQMhlIhQVXzBFomrsONPOB7nHgsQ6TGB
         nSOI3Oudz8oxloHuzUvackK4BZtLSM1FNIeV78AO/ORZkB+GVB5siFms4Ias0OfOm0Hp
         L89KJ8rSAyJzBLt1VHoRA38f3aH54FnfdldFk=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ondrej Zary <linux-ZCIryABCsrmttCpgsWEBFmD2FQJk+8+b@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Thanks for the hibernation fix!  Until recently I thought my floppy was
just dead.  Unfortunately, the fix seems to cause me errors on resume
from suspend to ram.  The floppy works fine afterwards, it just spams
the log.

On 2.6.30 there were no errors, and the floppy survived suspend-to-ram. 
So I guess the quick fix would be to only do the fix-up on resume from
hibernation, and not suspend-to-ram.

Thanks
Alan

Jul 18 15:27:23 alan-desktop kernel: [34795.256645]
Jul 18 15:27:23 alan-desktop kernel: [34795.256647] floppy driver state
Jul 18 15:27:23 alan-desktop kernel: [34795.256649] -------------------
Jul 18 15:27:23 alan-desktop kernel: [34795.256652] now=4305315874 last
interrupt=4303125175 diff=2190699 last called handler=ffffffffa00a64d0
Jul 18 15:27:23 alan-desktop kernel: [34795.256655] timeout_message=lock fdc
Jul 18 15:27:23 alan-desktop kernel: [34795.256657] last output bytes:
Jul 18 15:27:23 alan-desktop kernel: [34795.256659]  8 80 4295201276
Jul 18 15:27:23 alan-desktop kernel: [34795.256662]  8 80 4295201276
Jul 18 15:27:23 alan-desktop kernel: [34795.256664]  8 80 4295201276
Jul 18 15:27:23 alan-desktop kernel: [34795.256666]  8 80 4295201276
Jul 18 15:27:23 alan-desktop kernel: [34795.256668]  8 80 4297332499
Jul 18 15:27:23 alan-desktop kernel: [34795.256669]  8 80 4297332499
Jul 18 15:27:23 alan-desktop kernel: [34795.256671]  8 80 4297332499
Jul 18 15:27:23 alan-desktop kernel: [34795.256673]  8 80 4297332499
Jul 18 15:27:23 alan-desktop kernel: [34795.256675]  8 80 4298652310
Jul 18 15:27:23 alan-desktop kernel: [34795.256677]  8 80 4298652310
Jul 18 15:27:23 alan-desktop kernel: [34795.256679]  8 80 4298652310
Jul 18 15:27:23 alan-desktop kernel: [34795.256681]  8 80 4298652310
Jul 18 15:27:23 alan-desktop kernel: [34795.256683]  8 80 4299614961
Jul 18 15:27:23 alan-desktop kernel: [34795.256685]  8 80 4299614961
Jul 18 15:27:23 alan-desktop kernel: [34795.256687]  8 80 4299614961
Jul 18 15:27:23 alan-desktop kernel: [34795.256689]  8 80 4299614961
Jul 18 15:27:23 alan-desktop kernel: [34795.256691]  8 80 4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256693]  8 80 4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256695]  8 80 4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256697]  8 80 4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256699] last result at
4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256701] last redo_fd_request
at 4303125175
Jul 18 15:27:23 alan-desktop kernel: [34795.256703]
Jul 18 15:27:23 alan-desktop kernel: [34795.256709] status=0
Jul 18 15:27:23 alan-desktop kernel: [34795.256711] fdc_busy=1
Jul 18 15:27:23 alan-desktop kernel: [34795.256713]
do_floppy=ffffffffa00a64d0
Jul 18 15:27:23 alan-desktop kernel: [34795.256715] cont=ffffffffa00ad8c0
Jul 18 15:27:23 alan-desktop kernel: [34795.256717] current_req=(null)
Jul 18 15:27:23 alan-desktop kernel: [34795.256719] command_status=-1
Jul 18 15:27:23 alan-desktop kernel: [34795.256720]
Jul 18 15:27:23 alan-desktop kernel: [34795.256829] floppy0: floppy
timeout called
Jul 18 15:27:23 alan-desktop kernel: [34795.259455] Restarting tasks ...
done.
