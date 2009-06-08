From: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Mon, 8 Jun 2009 09:29:23 -0700
Message-ID: <e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.xm.Vb7KKB@chimera> <20090608091544.53a94235@nehalam>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757332AbZFHQ3m@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=Ud4JkNBMIw5LEAbeJBPrClxi0uetiLtpUNT6jaSRDfQ=;
        b=XG4+Ju1gA/id3/cr1aLpYrbebOCzQFKD9DNx/2jNYOZEM46JvHQCbc77O5a1UwzH/V
         sv2nvrOkMbUUMAf48UvX57g/0X4KL26d2YIME3kHSZVIEf4DHTCiF2VKzvz6lH2eOozd
         L8qGQ8tMWCMNg1MiQ51fo6qNyBemIZbyHj5ug=
In-Reply-To: <20090608091544.53a94235@nehalam>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Stephen Hemminger <shemminger@vyatta.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Mon, Jun 8, 2009 at 9:15 AM, Stephen Hemminger<shemminger@vyatta.com=
> wrote:
> On Sun, =A07 Jun 2009 11:52:49 +0200 (CEST)
> "Rafael J. Wysocki" <rjw@sisk.pl> wrote:
>
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D131=
16
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Can't boot with nosmp
>> Submitter =A0 =A0 : Stephen Hemminger <shemminger@vyatta.com>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-15 4:18 (54 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D123976917=
817920&w=3D4
>> Handled-By =A0 =A0: Dan Williams <dan.j.williams@intel.com>
>>
>>
>
> I suspect this bit of code in dmaengine is the culprit:
>
> =A0 =A0 =A0 =A0/* redistribute available channels */
> =A0 =A0 =A0 =A0n =3D 0;
> =A0 =A0 =A0 =A0for_each_dma_cap_mask(cap, dma_cap_mask_all)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for_each_online_cpu(cpu) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (num_possible_cpus(=
) > 1)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0chan =3D=
 nth_chan(cap, n++);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0else
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0chan =3D=
 nth_chan(cap, -1);
>
> Why does num_possible_cpus() =3D=3D 1 have to be a special case?

When there will only be one cpu the channel allocation policy changes f=
rom:
"isolate a channel per cpu"
=2E..to:
"isolate a capability per channel".

=46or example, isolating per channel allows a memcpy to run concurrentl=
y
with an xor.
