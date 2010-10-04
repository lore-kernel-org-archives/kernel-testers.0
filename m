From: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16462] unable to connect to hidden SSID AP on legal channel 13
Date: Mon, 4 Oct 2010 08:45:33 +0100
Message-ID: <AANLkTim_fBnuVX94zKH_u6mOx4pPZK4BfSn1qexj6_wd@mail.gmail.com>
References: <OjxVjYbf_EJ.A.ReC.pTPqMB@chimera>
	<N9RAiGGLCfN.A.3rD.tVPqMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=+0CnmynDWHy8y2dVHIV6k/1BGdocX1/EKoi1yCMbOmc=;
        b=SxMFyY7uwOxPAB3rIpf/j6g5XLS49mvHKePYppaJOKi7Y2Kku/2Vdg9CKAmgFCKQZf
         OYxXApl8TqKRpQMSoKwbohN+G4vxXcYp6vMe4+yF4u16Vy5xj+RVc1uXvUKQl4cSQFsr
         PElAn8+9Cu+qBDGC9kVZNtO5kTAjcIoRX+TGo=
In-Reply-To: <N9RAiGGLCfN.A.3rD.tVPqMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hi Rafael,

On 3 October 2010 22:53, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16462
> Subject =A0 =A0 =A0 =A0 : unable to connect to hidden SSID AP on lega=
l channel 13
> Submitter =A0 =A0 =A0 : Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-25 17:06 (71 days old)
> Handled-By =A0 =A0 =A0: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch =A0 =A0 =A0 =A0 =A0 : https://bugzilla.kernel.org/attachment.cg=
i?id=3D31862

This patch addresses the issue, though it hasn't been pulled to mainlin=
e yet.

Many thanks,
  Daniel
--=20
Daniel J Blueman
