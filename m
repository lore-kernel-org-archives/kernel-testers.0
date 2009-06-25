From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc1: touchpad disabled on hibernation
Date: Thu, 25 Jun 2009 19:16:53 +0200
Message-ID: <8db1092f0906251016l5ac85bfdpbac841b939cfac2a@mail.gmail.com>
References: <4A438BA7.9010800@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=4xqcnCBLh01skR++eBnnXSSHEkiw2kGCsboqmGyKwzw=;
        b=PoBeuzqM2AypwyxEZTSw+1utntAor0GYygljrWsCoNFQk67r9BBy+Rt+7D0xc+k3EK
         LT3MznJJCFzpRUbP/a+lhHw3MRrICLhyXCYqjU4BsM1Y4NXJq4Zorxriw5hLoMSA5twB
         h1yfpRP1yMU+HO+Zd3gnuaNciR2ScEFtmawic=
In-Reply-To: <4A438BA7.9010800-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-input-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

2009/6/25 Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>:
> The synaptics touchpad on my EeePC 701 dies on hibernation. =C2=A02.6=
=2E30 was
> fine, and it doesn't happen on suspend to ram either. =C2=A0There are=
 no
> obvious error messages, but maybe this boot message is relevant:
>
> Platform driver 'i8042' needs updating, please use dev_pm_ops
>

Similar on s2disk, HP/Compaq notebook. Try reload psmouse module. I
reported it, but nobody answer.

--=20
Maciej Rutecki
http://www.maciek.unixy.pl
