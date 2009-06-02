From: Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13179] CD-R: wodim intermittent failures
Date: Mon, 01 Jun 2009 22:42:33 -0600
Message-ID: <4A24ADB9.6010903@gmail.com>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <LEcEO2518_I.A.I5E.BKbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Yo76hPokE9CozCp8iYmxdSiDUjYTVWikJCv/z/QUV7Q=;
        b=SvUSCtetQfq6a5EqA41/pcdc/svLlo6KwFmfEvBabmt9+BJyR6tTKQ4pKu1/ZgW8+t
         fTnSxUYEee5LX6aTIQZHGClRQ8bORzGnskfkoV3DlGFAydUA8Zbs1my6asr+2fuCxB+s
         myaAqsRR1wxDb4JdPp5/8ZjZbqvwnl5UiZ4Sw=
In-Reply-To: <LEcEO2518_I.A.I5E.BKbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Isaacson <adi-3HqRAUrWAWyGglJvpFV4uA@public.gmane.org>, Joerg Schilling <Joerg.Schilling-8LS2qeF34IpklNlQbfROjRvVK+yQ3ZXh@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13179
> Subject		: CD-R: wodim intermittent failures
> Submitter	: Andy Isaacson <adi-3HqRAUrWAWyGglJvpFV4uA@public.gmane.org>
> Date		: 2009-04-21 1:52 (40 days old)
> References	: http://marc.info/?l=linux-kernel&m=124027879214231&w=4

Last I heard the reporter was going to attempt a bisect, that was a 
while ago. I don't really have any suggestions other than that.
