From: Victor Seryodkin <vvscore@gmail.com>
Subject: Re: [Bug #16613] i8042 kernel module failed to load after unloading
Date: Mon, 30 Aug 2010 09:13:04 +0400
Message-ID: <AANLkTinruBeRL6im9qG3Y6jqKiYujzpLoAA-v1qDz34S@mail.gmail.com>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
	<ByD_7B96czP.A.XbB.bcueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=0dOlWNOUIrKUGRCGuAHEkNhJ4Jej/ArtesSzsYjHNmU=;
        b=N0JIQ2jJqKRLOqaKoDthKDZE9Am6sTKpqQTGUZ2Yw6Q9UiaermQ945vIkuA0I4YthY
         DnPAsT/1j+5Xh6OhDvk3/Gw1WUn0xb7Nio0E8X0t6LSTvz8yvOnB9eY6V5eKq8Em8gEf
         azd0+yrL+qA0TU7rie2m7H3mkDvxRIzn7fb6w=
In-Reply-To: <ByD_7B96czP.A.XbB.bcueMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

Verifying: the bug is still actual

On Mon, Aug 30, 2010 at 3:13 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
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
16613
> Subject =A0 =A0 =A0 =A0 : i8042 kernel module failed to load after un=
loading
> Submitter =A0 =A0 =A0 : Seryodkin Victor <vvscore@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-08-17 17:01 (13 days old)
>
>
>
