From: "Trenton D. Adams" <trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13018] 2.6.29 on MacBook 2,1 fails to reboot
Date: Tue, 7 Apr 2009 16:00:18 -0600
Message-ID: <9b1675090904071500i1e57c4d7s4c5e658530c57af0@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <9b1675090904061913o614e02fdl22ef2cf795525a6d@mail.gmail.com>
	 <9b1675090904061914m4d5e204lbf726a07ba406cf2@mail.gmail.com>
	 <200904072330.59738.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=nXzNIxY1DGfvRzMWYxe6SqL61f4VaDhgS7ih++Py9x4=;
        b=Q0+6pqSW0+xmPvNINSm5k5D32/JwvoYYYOJEnYtm4xEwyL2CtwVZIbcxhZ/XGFNINl
         nU/81kHouhJ/2ZfIfJlFSXNhSKNuUnit5iDu0E7vqw7s/39E0zqfPaInehuIUtmw5tNn
         Q3ld8FUiMwuY8chQ6XcKtiz6dnXLFfnmS4ru8=
In-Reply-To: <200904072330.59738.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>, mstevens-APqb+XXLJz/QQQFqJy/XgFaTQe2KTcn/@public.gmane.org, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

Also, someone named Stefan has been discussing it with me as well.
See the other macbook thread.

On Tue, Apr 7, 2009 at 3:30 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Tuesday 07 April 2009, Trenton D. Adams wrote:
>> On Mon, Apr 6, 2009 at 8:13 PM, Trenton D. Adams
>> <trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> > Hi Rafael,
>> >
>> > Yes, it is still a problem. =A0I have identified it as far down to=
 being
>> > an alsa problem. =A0Please follow the other thread related to this=
=2E =A0I
>>
>> Oops, sorry, I should make clear that it is not an alsa problem
>> specifically, but an alsa hda-intel driver issue, which is related t=
o
>> alsa.
>
> OK, thanks for the update.
>
> Rafael
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
>
