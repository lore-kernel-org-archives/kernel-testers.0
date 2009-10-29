From: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 29 Oct 2009 18:34:45 -0400
Message-ID: <cb0375e10910291534j485b9e55vc42c3ce94a30252c__37962.2794841$1256855901$gmane$org@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.haF.Are5KB@chimera>
	 <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com>
	 <20091029222335.GJ18464@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=IhSM0IXDp/H+eSlqyCxDayPq3L9nAGptIEStfjv0dBg=;
        b=XCFhkTN3hPA1Kf+Tk7P0zkUWv8z2sfrLLOqJlPN8CWgh4ryyNEt8Y8MlVF1rWAdi2+
         vQuhlTAUxX8v5Oe0Q5uI2STqlVfHO4vmYdjjz3+LNR0LRW0UHgNyBMBwCh0lSx/M/pXm
         Std4ByvJUKHu4UkCA1QoYQcKdiU1gN1zLgixU=
In-Reply-To: <20091029222335.GJ18464-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>, Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kerne>

On Thu, Oct 29, 2009 at 6:23 PM, Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org> wrote:
> On Thu, Oct 29, 2009 at 03:57:32PM -0400, Andrew Lutomirski wrote:
>>
>> This but is *not* fixed. =A0I just triggered it a few minutes ago by
>> abusing i915 and drm, which caused a panic. =A0This is slightly newe=
r
>> than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.
>
> Andrew, can you test to see if this patch helps?

I'm building a kernel with that patch now, and I'll keep running it
for awhile.  I only seem to trigger this bug once a month or so, so
I'll let you know if I see any more corruption.

Thanks,
Andy
