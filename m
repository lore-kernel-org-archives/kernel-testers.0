From: Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #20332] [LogFS] [2.6.36-rc7] Kernel BUG at lib/btree.c:465!
Date: Sun, 2 Jan 2011 21:18:55 +0000
Message-ID: <AANLkTi=2PZ81T4_vV4RiXgxZB3PHzpEfEisEN-cO1jjg@mail.gmail.com>
References: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
	<LbeBv-BNQpL.A.KT.IG8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=UhxKPsiYPtJD/y+S84QvQolcXfcElyMRk4WqfXn+7v4=;
        b=Z0BSpHqEOJzp9BvSE67nfSJpoGQGuKD233aGAmCmXpD3ZK5qEXVzkeKYzs0Y7tKaVR
         Lb1DBYu1woJZp5xwTQkfk7MIyX5sCoFSFjST17lgT2tpqtJvxd8wJ1VklWM2eHQpHHs/
         bhxx+eWjC/BjTZys68RPZ/HjVHZA21NdkZVNc=
In-Reply-To: <LbeBv-BNQpL.A.KT.IG8GNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

Hello,

I did not observe this bug with the latest kernel (2.6.37-rc8+).

Thanks and Regards,
Prasad

On Wed, Dec 29, 2010 at 11:21 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.35 and 2.6.36.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.35 and 2.6.36. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
20332
> Subject =A0 =A0 =A0 =A0 : [LogFS] [2.6.36-rc7] Kernel BUG at lib/btre=
e.c:465!
> Submitter =A0 =A0 =A0 : Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-10-12 18:56 (79 days old)
> Message-ID =A0 =A0 =A0: <AANLkTimAbCZNhLQ5nADUiAC+7JpAeJBEmjFwdxyZ-Fx=
O@mail.gmail.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D128690=
910501830&w=3D2
>
>
>
