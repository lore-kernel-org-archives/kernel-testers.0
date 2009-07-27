From: Daniel J Blueman <daniel.blueman@gmail.com>
Subject: Re: [Bug #13730] hitting lockdep limits...
Date: Mon, 27 Jul 2009 10:07:00 +0100
Message-ID: <6278d2220907270207g7ff93fd1kdf59e32f139269d3@mail.gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.c9D.3HObKB@chimera> <1248675700.6987.1416.camel@twins>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755574AbZG0JHE@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=pNycodu0+5T69Lf5jGkPN/ZKv5jK3rd53VQ4SbT6dI4=;
        b=oCiWyOxgzBgM6KJeuBJqEWHE8nJJKZptFb5cKU5L1AjRDMKHOxDSnn4LF1P6DRKl76
         HrFKovp8NdHTVd4g+VV79WjEhuaseKnQuhpJXvTNfCNXg9BkBkJtEXFEbgv8LV1A73lN
         aN67XUaqUUO70rjfENAcnw76DiVFoKPLDailI=
In-Reply-To: <1248675700.6987.1416.camel@twins>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Peter Zijlstra <a.p.zijlstra@chello.nl>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Mon, Jul 27, 2009 at 7:21 AM, Peter Zijlstra<a.p.zijlstra@chello.nl>=
 wrote:
> On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.30. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D137=
30
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : hitting lockdep limits...
>> Submitter =A0 =A0 : Daniel J Blueman <daniel.blueman@gmail.com>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-07-05 18:19 (22 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124681799=
023782&w=3D4
>>
>
>
> Is this still a problem after?
>
> commit b0a5b83ee0fce9dbf8ff5fe1f8c9ae7dfafe458c
> Author: Ingo Molnar <mingo@elte.hu>
> Date: =A0 Tue Jun 16 16:11:14 2009 +0200
>
> =A0 =A0dma-debug: Put all hash-chain locks into the same lock class

Using the same .config and use profile, I haven't seen this in
2.6.31-rc4, thus this can be closed. I've updated the kernel bugzilla
entry also.
--=20
Daniel J Blueman
