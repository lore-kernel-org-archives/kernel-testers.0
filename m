From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14899] reiserfs: inconsistent lock state
Date: Mon, 11 Jan 2010 02:16:10 +0300
Message-ID: <a4423d671001101516l13a709fhe5c07343926160d1@mail.gmail.com>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
	 <omZ8aBZReyD.A.vd.qNlSLB@chimera> <20100110224914.GB5039@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=xo6/HsSAH3tShF7npFHLl3L/yo7AkUfVoSNcEWwVg3Y=;
        b=OFsp0wGsWMgmBibPGZ7P8Mo6L3/PbRktj9/SRt7uRN1b++wIRk0S6WtmX1aK/SP3tj
         zP/3P1os10OdaHygKDlBa1CFbkeCcoFhpdzXVJ4SdnuwRJRzGiCURZCI+L67d+8K8Zwc
         PMMhVDw71wK7k9XIaCe2hyv1Q5wLk1XqrETA8=
In-Reply-To: <20100110224914.GB5039@nowhere>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2010/1/11 Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> On Sun, Jan 10, 2010 at 11:32:53PM +0100, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.32. =C2=A0Please verify if it still should be listed and le=
t me know
>> (either way).
>>
>>
>> Bug-Entry =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D14899
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : reiserfs:=
 inconsistent lock state
>> Submitter =C2=A0 =C2=A0 : Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-12-11 22:06 (31 days o=
ld)
>> References =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=3D126=
056920702515&w=3D4
>> Handled-By =C2=A0 =C2=A0: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://patchwork.kernel.org/patc=
h/67256/
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 http://patch=
work.kernel.org/patch/67257/
>
>
>
> The fix have been pulled upstream. Would be nice to have Alexander
> confirmation that it's really fixed though.

Yes, all warnings have disappeared. Thanks a lot.
