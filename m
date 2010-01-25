From: David <david@unsolicited.net>
Subject: Re: [Bug #14924] Weird hard hangs when rendering 'some' web-sites
 in Firefox
Date: Mon, 25 Jan 2010 19:26:25 +0000
Message-ID: <4B5DF061.1070704@unsolicited.net>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.V3G.JLMXLB@chimera> <20100125135531.GB3749@hack>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754843Ab0AYT2H@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=unsolicited.net; s=one;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:Message-ID; bh=7u8NbKGMxOMX33RejwDRvvvea4S+cYhRhqsP5RL/ONs=;
	b=ZVaS3ZaT+roecyhWc2n+IISC1sRrhh+PI7AdVYSBxEhas0iMSqNytiMyC6RkLnVGDAEMpoAwCUR1jvE0G+JuMR3s4apF+m2Sf6fCVTRvULMzvXLlSAoifrwpiZVtQwfmG7Ydlf+8VYulrN31uKCTHdLSNKfx8L4zUiuSy0CKh/Q=;
In-Reply-To: <20100125135531.GB3749@hack>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?Am=E9rico_Wang?= <xiyou.wangcong@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Am=E9rico Wang wrote:
> On Sun, Jan 24, 2010 at 11:04:33PM +0100, Rafael J. Wysocki wrote:
>  =20
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>>    =20
> >from 2.6.32.  Please verify if it still should be listed and let me =
know
>  =20
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14924
>> Subject		: Weird hard hangs when rendering 'some' web-sites in Firef=
ox
>> Submitter	: David <david@unsolicited.net>
>> Date		: 2009-12-21 21:53 (35 days old)
>> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126143375823340&=
w=3D4
>>    =20
>
> Hmm, you have CONFIG_DETECT_SOFTLOCKUP=3Dy, I have no idea what happe=
ned,
> doing a bisect would be appreciated.
>
> Thanks.
>
>  =20

I no longer have the offending hardware, but I think that the issue was
probably corrected by:

    cafe6609d6dc0a6a278f9fdbb59ce4d761a35ddd -
drm/radeon/kms: Schedule host path read cache flush through the ring V2

as the offending ATI graphics was indeed R300.

Cheers
David

