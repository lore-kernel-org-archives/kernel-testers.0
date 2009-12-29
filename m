From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14904] slab: possible recursive locking detected
Date: Tue, 29 Dec 2009 17:37:18 +0200
Message-ID: <84144f020912290737y695f6e41xe599decf1c68c50e@mail.gmail.com>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	 <NJVdobuNFNK.A.90H.anhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=jSqnpXb/4fQIvpQSA/1eDKIlZGCeL8/B8uVhQj0083k=;
        b=F5EiFDrbAMKbxVL2XYTYGZKrt5m1kRAqg6V3WTkf8/z0g1fhMz+uIseMVbOzP/HIVr
         7DKLueFQZ6kJg0iaynIeQw0hg728wtW/ccW0fYdVKb0zvm3brNCrJJ5DwxeNfIamcUAb
         MPcxJ11XIgcN6A6hYyKINfcTBvWPlk3vvG6Ng=
In-Reply-To: <NJVdobuNFNK.A.90H.anhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

On Tue, Dec 29, 2009 at 5:09 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14904
> Subject =A0 =A0 =A0 =A0 : slab: possible recursive locking detected
> Submitter =A0 =A0 =A0 : Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-12-18 11:58 (12 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D126113=
754023909&w=3D4
> Handled-By =A0 =A0 =A0: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

This is the same problem as the following:

http://bugzilla.kernel.org/show_bug.cgi?id=3D14951
