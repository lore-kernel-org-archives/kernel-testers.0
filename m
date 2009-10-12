From: Bart Van Assche <bart.vanassche@gmail.com>
Subject: Re: [Bug #14070] lockdep warning triggered by dup_fd
Date: Mon, 12 Oct 2009 19:10:07 +0200
Message-ID: <e2e108260910121010l7855ad67g903cceac1a3ba024@mail.gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.LUE.p0l0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754451AbZJLRKr@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=B8JV4C3QNiJmcPgB7+elNAi+0NyrSQ2BW6JLVUpbz1o=;
        b=k10AWqEsZacpSamfQli/P+b3b486Npd6Ue1wuZVE2wgHhtHAYKDaIOniAl7ih754ca
         32t0hLbdcji9pZWt2CvqPfSB35sFwvnMZgC8iXk7nUFnuSwd1FV6FHf0yPcw3MPjDrX0
         1L8MQjyQh4pRLHxIM/FyvVQZ9cMxfqlEyJFuk=
In-Reply-To: <L6tb-VyKHZK.A.LUE.p0l0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Mon, Oct 12, 2009 at 1:01 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
>
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14070
> Subject =A0 =A0 =A0 =A0 : lockdep warning triggered by dup_fd
> Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-08-23 09:36 (50 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/8/23/8
>

Hello Rafael,

Since I reported the above issue I haven't seen it reappearing yet.

Bart.
