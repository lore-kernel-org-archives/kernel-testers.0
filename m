From: Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Mon, 26 Jan 2009 02:09:56 +0530
Message-ID: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=sNu1ysCAMH//PMcA5+ACXGXwnaa4j/EW2NDZ1gjMHRU=;
        b=VywbxwyNExhQO0h3+jWC4CbD6vhOy+KX/bpvr+IAG83kvckNUE5m3ssXpur/pOOF3r
         r8QQMX5Z/jVFUnB81LxoJq1aHoi7Mbl+jhYNxTlqfHs6uuonS2RSRaJzbd9VsN0XP8LP
         e4VjAzIjVs+V1iOLBXimlyTwlkD2FIqqtdnGY=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

Hello all,

I added extra IDE drive I get similar messages like below so I replace
it another drive but I am still getting similar error messages on
2.6.29-rc2-tip:

hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=0
ide: failed opcode was: unknown
end_request: I/O error, dev hdb, sector 0
Buffer I/O error on device hdb, logical block 0
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=8
ide: failed opcode was: unknown
end_request: I/O error, dev hdb, sector 8
Buffer I/O error on device hdb, logical block 1
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=16
ide: failed opcode was: unknown
end_request: I/O error, dev hdb, sector 16
Buffer I/O error on device hdb, logical block 2
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=24
ide: failed opcode was: unknown
end_request: I/O error, dev hdb, sector 24
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=0
ide: failed opcode was: unknown
end_request: I/O error, dev hdb, sector 0
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=4294967295
ide: failed opcode was: 0xea
hdb: drive not ready for command
hdb: wcache flush failed!
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=4294967295
ide: failed opcode was: 0xec
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=4294967295
ide: failed opcode was: 0xa1
hdb: drive not ready for command
hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
hdb: status error: error=0x40 <3>{ UncorrectableError },
LBAsect=208845, sector=4294967295
ide: failed opcode was: 0xea
hdb: drive not ready for command
hdb: wcache flush failed!

How can I fix these error.

Thanks,

--
JSR
