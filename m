From: Luiz Augusto von Dentz <luiz.dentz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15127] Bluetooth: sleeping function called from invalid 
	context
Date: Mon, 1 Feb 2010 14:00:46 -0800
Message-ID: <2d5a2c101002011400o53a69f5ap3757ecba41199499@mail.gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
	 <de962C6zBxL.A.lME.FFiZLB@chimera>
	 <1264986406.31341.5.camel@localhost.localdomain>
	 <4B6711E2.6010409@xenontk.org>
	 <1265051657.31341.56.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=WIXP3K2UBMVwRzrZZc1sViSLbtNZeM+p05W2+8IlhVU=;
        b=vHU1R2FJ0V/WcpJlL+MZMT98+FJ5SqJnc2LlroWQ6KphXXYAIgUYkP0owHqnganesG
         PFdUL4ThcXmnCkQHvcJBf23YKOIH/b5MKKLUohA6WfSCZtUj+kHADFA0CuskLGlEUu0r
         qUZCm5FgnnfyDcRnbbDWLiBdI/yLtyzuPvTt4=
In-Reply-To: <1265051657.31341.56.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="ibm866"
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi,

On Mon, Feb 1, 2010 at 11:14 AM, Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org> =
wrote:
> Hi David,
>
>> >> This message has been generated automatically as a part of a repo=
rt
>> >> of regressions introduced between 2.6.31 and 2.6.32.
>> >>
>> >> The following bug entry is on the current list of known regressio=
ns
>> >> introduced between 2.6.31 and 2.6.32. =A0Please verify if it stil=
l should
>> >> be listed and let me know (either way).
>> >>
>> >>
>> >> Bug-Entry =A0: http://bugzilla.kernel.org/show_bug.cgi?id=3D15127
>> >> Subject =A0 =A0 =A0 =A0 =A0 =A0: Bluetooth: sleeping function cal=
led from invalid context
>> >> Submitter =A0: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>> >> Date =A0 =A0 =A0 =A0 =A0 =A0 =A0 : 2010-01-12 9:19 (20 days old)
>> >> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/tor=
valds/linux-2.6.git;a=3Dcommit;h=3D9e726b17422bade75fba94e625cd35fd1353=
e682
>> >> References : http://marc.info/?l=3Dlinux-kernel&m=3D1263287270219=
49&w=3D4
>> >
>> > you have an outdated email from Luiz and I change it to the right =
one
>> > now.
>> >
>> > I looked with him at the patch and I think this will fix it:
>> >
>> > diff --git a/net/bluetooth/rfcomm/core.c b/net/bluetooth/rfcomm/co=
re.c
>> > index fc5ee32..2b50637 100644
>> > --- a/net/bluetooth/rfcomm/core.c
>> > +++ b/net/bluetooth/rfcomm/core.c
>> > @@ -252,7 +252,6 @@ static void rfcomm_session_timeout(unsigned lo=
ng
>> > arg)
>> > =A0 =A0 BT_DBG("session %p state %ld", s, s->state);
>> >
>> > =A0 =A0 set_bit(RFCOMM_TIMED_OUT, &s->flags);
>> > - =A0 rfcomm_session_put(s);
>> > =A0 =A0 rfcomm_schedule(RFCOMM_SCHED_TIMEO);
>> > =A0}
>> >
>> > @@ -1920,6 +1919,7 @@ static inline void rfcomm_process_sessions(v=
oid)
>> > =A0 =A0 =A0 =A0 =A0 =A0 if (test_and_clear_bit(RFCOMM_TIMED_OUT, &=
s->flags)) {
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 s->state =3D BT_DISCONN;
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rfcomm_send_disc(s, 0);
>> > + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 rfcomm_session_put(s);
>> > =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 continue;
>> > =A0 =A0 =A0 =A0 =A0 =A0 }
>> >
>> > We need some extra testing on this with the actual hardware we did=
 the
>> > patch for. So this will take at least a few days before we get our=
 hands
>> > on it.
>>
>> FWIW, your patch fixes the issue.
>
> nice. So I can add a tested-by line to the final patch?
>
> Just our of curiosity, which hardware did you test this with. We only
> know about one headset that should cause this issue.
>

Just in case, here is the hcidump of the Nokia HS-12W, the one that
has problem when we connection authorization is denied:

> ACL data: handle 11 flags 0x02 dlen 8
    L2CAP(d): cid 0x0041 len 4 [psm 3]
      RFCOMM(s): SABM: cr 1 dlci 26 pf 1 ilen 0 fcs 0xe7
< ACL data: handle 11 flags 0x02 dlen 12
    L2CAP(s): Disconn req: dcid 0x0042 scid 0x0040
< ACL data: handle 11 flags 0x02 dlen 8
    L2CAP(d): cid 0x0044 len 4 [psm 3]
      RFCOMM(s): DM: cr 1 dlci 26 pf 1 ilen 0 fcs 0xcd
> HCI Event: Number of Completed Packets (0x13) plen 5
> ACL data: handle 11 flags 0x02 dlen 12
    L2CAP(s): Disconn rsp: dcid 0x0042 scid 0x0040
< ACL data: handle 11 flags 0x02 dlen 8
    L2CAP(d): cid 0x0044 len 4 [psm 3]
      RFCOMM(s): DISC: cr 0 dlci 0 pf 1 ilen 0 fcs 0x9c
> ACL data: handle 11 flags 0x02 dlen 8
    L2CAP(d): cid 0x0041 len 4 [psm 3]
      RFCOMM(s): UA: cr 0 dlci 0 pf 1 ilen 0 fcs 0xb6
< ACL data: handle 11 flags 0x02 dlen 12
    L2CAP(s): Disconn req: dcid 0x0044 scid 0x0041
> HCI Event: Number of Completed Packets (0x13) plen 5
> ACL data: handle 11 flags 0x02 dlen 12
    L2CAP(s): Disconn rsp: dcid 0x0044 scid 0x0041
< HCI Command: Disconnect (0x01|0x0006) plen 3
> HCI Event: Command Status (0x0f) plen 4
> HCI Event: Disconn Complete (0x05) plen 4

So this means the patch works. DISC 0 is send from our side (due to
the session timeout) when normally it should be other end that
disconnects right away when we respond with DM.

--=20
Luiz Augusto von Dentz
Engenheiro de Computa=E7=E3o
