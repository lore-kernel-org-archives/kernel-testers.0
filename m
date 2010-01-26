From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong@gmail.com>
Subject: Re: [Bug #14924] Weird hard hangs when rendering 'some' web-sites in 
	Firefox
Date: Tue, 26 Jan 2010 11:06:53 +0800
Message-ID: <2375c9f91001251906s520112ebuf12f60729b004857@mail.gmail.com>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
	 <hE3x9c-4KZM.A.V3G.JLMXLB@chimera> <20100125135531.GB3749@hack>
	 <4B5DF061.1070704@unsolicited.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752689Ab0AZDG4@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=CkRL+mG1rmoZqVBRxyWjryuB1sByqYnp7Bf8dPjOleU=;
        b=IY87UJNlD0Xjr+xgSuvvxAyglhmxOSi7Un3PjluRtwp6qGVSWn5pbS2Sf64B8RXusJ
         WSrQx//S5dIbQO6Xov0te4Hr/2CZK+hFw7vuCJ06dImzfHLeeqe+4BqhIokbi/hAhyMV
         RoK2Fa+F/pQ+0cnAHLsDj8GbeyVHnbeKw/NXM=
In-Reply-To: <4B5DF061.1070704@unsolicited.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: David <david@unsolicited.net>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tue, Jan 26, 2010 at 3:26 AM, David <david@unsolicited.net> wrote:
> Am=C3=A9rico Wang wrote:
>> On Sun, Jan 24, 2010 at 11:04:33PM +0100, Rafael J. Wysocki wrote:
>>
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>>
>> >from 2.6.32. =C2=A0Please verify if it still should be listed and l=
et me know
>>
>>> (either way).
>>>
>>>
>>> Bug-Entry =C2=A0 =C2=A0: http://bugzilla.kernel.org/show_bug.cgi?id=
=3D14924
>>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: Weird har=
d hangs when rendering 'some' web-sites in Firefox
>>> Submitter =C2=A0 =C2=A0: David <david@unsolicited.net>
>>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 2009-12-21 21:53 (35 days old)
>>> References =C2=A0 : http://marc.info/?l=3Dlinux-kernel&m=3D12614337=
5823340&w=3D4
>>>
>>
>> Hmm, you have CONFIG_DETECT_SOFTLOCKUP=3Dy, I have no idea what happ=
ened,
>> doing a bisect would be appreciated.
>>
>> Thanks.
>>
>>
>
> I no longer have the offending hardware, but I think that the issue w=
as
> probably corrected by:
>
> =C2=A0 =C2=A0cafe6609d6dc0a6a278f9fdbb59ce4d761a35ddd -
> drm/radeon/kms: Schedule host path read cache flush through the ring =
V2
>
> as the offending ATI graphics was indeed R300.
>

Ok, thanks!
