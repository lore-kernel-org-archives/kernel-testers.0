From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Tue, 23 Mar 2010 11:22:26 +0800
Message-ID: <2375c9f91003222022q17cfc75fx3f8ebcb7d785dc42@mail.gmail.com>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	 <hTwaxgnIZ2O.A.rhF.SQopLB@chimera>
	 <alpine.LSU.2.00.1003220319360.1726@sister.anvils>
	 <201003222228.28268.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=8XLgIwjTw72Yk3qyIx7rMqdXKd82DNmZYkl2EaswdHM=;
        b=nhX+ZEtcVKv1lw/pNE7ObI9sA71gJDjRTO/ueu8EFnApNQohQn0AEeBi6j4uopsexM
         FU5tGNzElJkjpyJsDkCcayH2yWNYr/VyMASudugl9BYFwH/azbiwasMn6DaoxBo4lU0t
         TSYFkDQmmkgk8oHm52uyoBe6P0V7Dkn2+/Pc0=
In-Reply-To: <201003222228.28268.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>

On Tue, Mar 23, 2010 at 5:28 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Monday 22 March 2010, Hugh Dickins wrote:
>> On Sun, 21 Mar 2010, Rafael J. Wysocki wrote:
>> > The following bug entry is on the current list of known regression=
s
>> > introduced between 2.6.32 and 2.6.33. =C2=A0Please verify if it st=
ill should
>> > be listed and let the tracking team know (either way).
>> >
>> > Bug-Entry =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D15=
202
>> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : lockdep warnin=
g during elevator_switch
>> > Submitter =C2=A0 : Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
>> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010=
-01-31 23:55 (50 days old)
>> > References =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=3D12649821=
2613051&w=3D4
>>
>> Yes, it is still a regression 2.6.33.1 (though fixed in 2.6.34-rc1:
>> my guess is that it will be left as a regression in 2.6.33-stable,
>> since it only happens when you have chosen CONFIG_PROVE_LOCKING=3Dy)=
=2E
>
> The policy is that we close the regression bugs after they've been fi=
xed in the
> Linus' tree, so I'm going to close it now.

Agreed.

>
> If you want it to go into -stable, please let Greg know directly.
>

Right, but the fix for this issue is too large to go -stable, perhaps.
Lots of related fixes are needed too because of it.

Thanks.
