From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12414] iwl4965 cannot use "ap auto" on latest 2.6.28/29?
Date: Thu, 5 Feb 2009 22:34:31 +0800
Message-ID: <b6a2187b0902050634r37a4c3ccg55e2d1e22ae2f9c4@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.zq.WwYiJB@chimera>
	 <b6a2187b0902041115u130fcfe7ha1612e2e2fa1ec36@mail.gmail.com>
	 <200902050237.39394.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=+ifM4H4EKZcfEdJJASIOC3DP8bZ2duVIk1DyCY2PB98=;
        b=UzFDIkOyA1VEZ5fGQrVdk0lfI1a+ewjUupGm2ErjR/h7XChtJYILe2PTp7uEqWnQK9
         w2iRmfaRB5+BKv9qmlUld/ubTe7wlnkDHxx5ufrzYdjiGZEeAw/M+HGRHNLhih9PBVk/
         B5twjnx+rV3F5/VxhfEnxsGKIxuL2vpjJo3+Q=
In-Reply-To: <200902050237.39394.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Sujith.Manoharan-DlyHzToyqoxBDgjK7y7TUQ@public.gmane.org

On Thu, Feb 5, 2009 at 9:37 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Wednesday 04 February 2009, Jeff Chua wrote:
>> On Wed, Feb 4, 2009 at 6:23 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12414
>> > Subject         : iwl4965 cannot use "ap auto" on latest 2.6.28/29?
>> > Submitter       : Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> > Date            : 2009-01-05 4:13 (31 days old)
>> > References      : http://marc.info/?l=linux-kernel&m=123112882127823&w=4
>>
>> Latest linux git pull seems to behave slightly better. Restarting the
>> interface a few times fixes the problem 70% of the time. The rest of
>> the time, it can't associate with the AP.
>
> Thanks for the update, there is a patch for you to test at
> http://bugzilla.kernel.org/show_bug.cgi?id=12414#c3

Ok, will try that patch next weekend when I get home.

Thanks for the patch.

Jeff.
