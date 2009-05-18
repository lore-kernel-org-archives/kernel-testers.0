From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 18 May 2009 09:31:47 +0300
Message-ID: <84144f020905172331x6032394fn172f02e36298192d@mail.gmail.com>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera>
	 <385Pu-agh7M.A.SU.iYzDKB@chimera>
	 <20090516163610.8a012268.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=EOsoiswSXhwjmzChhW1LM5Wy5avosg1jXmrTPaRWUPE=;
        b=sS6llcfvJFplG1b1ZyNtNxM5VLKGzpYuVgmXG1W+NBGShHupXbh9dI+M7WJtB9NW+7
         ybdWWfH70U07/mJY8ASgAK2JXvVr8c5PAaFa5ja0M5hqnxiJ8FRqjyHRVBT44P4fwuoL
         d9QDe5Nx40QUq1z2T+jYe7qMwMPn7DcJppq7U=
In-Reply-To: <20090516163610.8a012268.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, adrian-TSF8l6Tg6afpT6hvJLqO3U8SxdOydiOw@public.gmane.org

Hi Andrew,

On Sat, 16 May 2009 21:20:45 +0200 (CEST) "Rafael J. Wysocki"
<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D133=
19
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures with =
b43 and p54usb
>> Submitter =A0 =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (18 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124103897=
101088&w=3D4
>> Handled-By =A0 =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Sun, May 17, 2009 at 2:36 AM, Andrew Morton
<akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> Well.. =A0order-1 GFP_ATOMIC allocations are unreliable. =A0The netwo=
rking
> code should hanlde the situation and recover. =A0I assume that is
> happening in this case?
>
> Perhaps we did something in that code after 2.6.29 which increased th=
e
> frequency of the order-1 allocation attempts? =A0Maybe earlier kernel=
s
> used order-0 all the time? =A0Those are much more reliable.

I wonder if this is related:

http://bugzilla.kernel.org/show_bug.cgi?id=3D13069

Both point to post 2.6.29... Hmm.
--
To unsubscribe from this list: send the line "unsubscribe linux-wireles=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
