From: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12420] WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x45e/0x750()
Date: Wed, 14 Jan 2009 08:40:39 +0100
Message-ID: <200901140840.39202.borntraeger@de.ibm.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <oWTznAnH9BI.A.PPH.GHfaJB@chimera> <496D95BA.4070304@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <496D95BA.4070304-hi6Y0CQ0nG0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Rempel <fishor-hi6Y0CQ0nG0@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

Am Mittwoch 14 Januar 2009 schrieb Alexey Rempel:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12420
> > Subject		: WARNING: at drivers/ata/libata-sff.c:1017 
ata_sff_hsm_move+0x45e/0x750()
> > Submitter	: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-01-09 12:34 (3 days old)
> > First-Bad-Commit: 
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=871af1210f13966ab911ed2166e4ab2ce775b99d
> > References	: http://marc.info/?l=linux-kernel&m=123150457832109&w=4


> This warning was disabled in latest git.

Yes. After the discussion had a conclusion, I decided to to send a patch 
myself and Jeff sent it to Linus.

http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=a0f79f7ad3e52b908786462cf5446ebe20fe14fa
