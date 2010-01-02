From: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14887] suspend doesn't work on X200s
Date: Fri, 1 Jan 2010 22:17:48 -0500
Message-ID: <cb0375e11001011917y6920d45dse0b507287e8538c@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.Zg.inhOLB@chimera> 
	<20091230111745.GC4489@kernel.dk> <200912302239.28792.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:from:date:x-google-sender-auth:message-id:subject:to:cc
         :content-type:content-transfer-encoding;
        bh=v0zVRryb/tMFHlqo94kY1fqMYWJTYAZ+14j+Zn2vgy4=;
        b=TSW0iEAO+ODll0zLuccM2g9vVXh0nTlbPURGU/hoKXdgE+tO2oEYm9jAZckpp0VbwC
         c3Zuqhw8fLLFEsAR1vvAhGt/KtjX9CvkBtEP3ghcC5Q//s5zA2hjFZ0TrOOdBOl5H7lJ
         r30HT7xrty3fmZaR87OT0L6QyIYvs4EJMZ9r4=
In-Reply-To: <200912302239.28792.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I suspect it was fixed by this patch:

http://lkml.org/lkml/2009/12/20/88

but I can't test because the machine in question died right after I
built it a new kernel.  sigh.

I'll re-post once I get the laptop working again if there's still a pro=
blem.

--Andy

On Wed, Dec 30, 2009 at 4:39 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Wednesday 30 December 2009, Jens Axboe wrote:
>> On Tue, Dec 29 2009, Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a repor=
t
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.32. =A0Please verify if it still should be listed and let=
 me know
>> > (either way).
>> >
>> >
>> > Bug-Entry =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D14887
>> > Subject =A0 =A0 =A0 =A0 =A0 =A0 : suspend doesn't work on X200s
>> > Submitter =A0 : Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-22 0:45 (8 days old)
>> > References =A0: http://marc.info/?l=3Dlinux-kernel&m=3D12614427410=
2396&w=3D4
>>
>> Works fine for me on an x200s. The only issue I seem to have is that
>> sometimes it suspends immediately upon resume again, presumably the =
lid
>> close event is re-triggered (or something to that extent). Apart fro=
m
>> that, 2.6.32 and current -git works fine for me.
>
> Thanks for the info.
>
> Perhaps the bug that Andrew saw has been fixed since then.
>
> I'm changing the stauts of the bug to "resolved". =A0Andrew, please r=
eopen if
> you're still seeing the problem with the current Linus' tree.
>
> Rafael
>
