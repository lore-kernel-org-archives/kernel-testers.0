From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: Regression: active uvcvideo breaks over suspend
Date: Wed, 15 Apr 2009 11:09:22 +0100
Message-ID: <49E5B252.4030104@tuffmail.co.uk>
References: <49E5B2F3.4080502@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=9GhIRoAf3tDwqXVtSnuxljfhn/TBslILZgTmEyRaR6I=;
        b=DEffCw5taSmAdD3GX335t/2WzbWmrn8Muc0+QsNOIj7hoAaZ/FG88ewYc7prUowmO9
         XOvV0K3BQ/KE30+6gpX4HTWF1sN6jgn62Fs4nhRse62Jvi8RFR6x+UI/S5oK+Wy+lF/b
         eylQsgOPCZ5Yg6P2iWuvTTLpeL9h0XD0GrOu4=
In-Reply-To: <49E5B2F3.4080502-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
Cc: USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

[removed from members-only mailing list]

Alan Jenkins wrote:
> I found this in v2.6.30-rc2.  I haven't tested beyond that.  I'm sure
> it didn't happen in 2.6.29.
>
> If I run "xawtv" and then suspend, it stops working on resume; the
> xawtv display goes black and the camera LED stays off.  When I close
> xawtv, the LED blinks on then off again.  If I then try to run xawtv
> again, it works fine.
>
> In dmesg (after resume) I see
>
> [  562.884298] usb 1-8: type resume
> [  562.990014] usb 1-8: reset high speed USB device using ehci_hcd and
> address 3
> [  563.665921] restoring control 00000000-0000-0000-0000-000000000101/0/2
> [  563.665935] restoring control 00000000-0000-0000-0000-000000000101/1/3
> [  563.665948] restoring control 00000000-0000-0000-0000-000000000101/3/7
> [  563.666412] uvcvideo 1-8:1.1: reset_resume error -12
>
> Thanks in advance
> Alan
