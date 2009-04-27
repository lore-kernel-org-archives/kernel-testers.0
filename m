From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Mon, 27 Apr 2009 11:52:56 +0300
Message-ID: <84144f020904270152o6567e84cj914934120315bf90@mail.gmail.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
	 <egHshlwQQFE.A.KjC.JpE9JB@chimera>
	 <alpine.DEB.2.00.0904261314430.18988@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=+hDfs22x0UX9SqEHxOtxY77AORt9NLaH6UcworVMSRo=;
        b=uZM/1LWz1pAu2tHfriN4pDKBVpu4HeIzoQ8V7Z254d9rqzC2EZdR2yXWsL9lVE+CM6
         OCFnzjjzXuB1sD/g5rUmy8CrpIR5YDwP4GuTDcR4l6C0VpDJKCJ6R5hZer5mr7JtXAN6
         of1cupGfMrjwD+82a5BR4iveVrXWGCSVw3AWs=
In-Reply-To: <alpine.DEB.2.00.0904261314430.18988-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Bart <mmx-G/jkD+u3s4s@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sun, 26 Apr 2009, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.28 and 2.6.29.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.28 and 2.6.29. =A0Please verify if it still s=
hould
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D131=
12
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Oops in drain_array
>> Submitter =A0 =A0 : Bart <mmx-G/jkD+u3s4s@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-14 10:21 (13 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D123970493=
224628&w=3D4

On Sun, Apr 26, 2009 at 11:19 PM, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> =
wrote:
> Bart, is it possible to try with CONFIG_DEBUG_SLAB enabled?

Please also enable CONFIG_DEBUG_LIST. Looking at the oops:

  18:   4a 8b 8c eb 68 01 00    mov    0x168(%rbx,%r13,8),%rcx # l3 =3D
cachep->nodelists[node];
  1f:   00
  20:   48 8b 16                mov    (%rsi),%rdx
  23:   48 8b 46 08             mov    0x8(%rsi),%rax
  27:   48 89 42 08             mov    %rax,0x8(%rdx)
  2b:*  48 89 10                mov    %rdx,(%rax)     <-- trapping ins=
truction
  2e:   89 e8                   mov    %ebp,%eax
  30:   48 c7 06 00 01 10 00    movq   $0x100100,(%rsi)
  37:   48 c7 46 08 00 02 20    movq   $0x200200,0x8(%rsi)

it seems like list_del() in free_block() explodes because because
->prev ("rax") of slab->list is bogus ("0000000000000cd0").

                                Pekka
