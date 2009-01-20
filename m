From: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
Subject: Re: [Bug #12393] debugging in dosemu causes lots of 'scheduling while 
	atomic'
Date: Tue, 20 Jan 2009 10:58:15 +0100
Message-ID: <a5d587fb0901200158h860ea00gb8350ecd3927f37d@mail.gmail.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera>
	 <cX2gZ6Cy9nC.A.06C.9JRdJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=+aSFwab4I1TI1i2X/A4O5UPFLuDXAUeIKaGujaVOUL0=;
        b=m/Rd9VYrpyPTuuwwpOIVvvbtrY9o0c4m0Ha49khs+4/wkTAwWCM/K1TJy7guVuY0rW
         wK8jzfYGfpaez4V+TqmTJPM+lwmUp+ZMRunRezoidDVkhf7IFf8KlcEumwAveXIZSvXv
         Mx1Dd/7RW8N9RRQVNdyJheB8WFlN40VtvHCaM=
In-Reply-To: <cX2gZ6Cy9nC.A.06C.9JRdJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/1/19 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12393
> Subject         : debugging in dosemu causes lots of 'scheduling while atomic'
> Submitter       : Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
> Date            : 2009-01-09 07:28 (11 days old)
>
>
>

See here:

http://marc.info/?l=linux-kernel&m=123188630319434&w=2

Until the patch is applied the problem will be present. It is probably
still present in 2.6.29-rc1.

Thanks

Michal
