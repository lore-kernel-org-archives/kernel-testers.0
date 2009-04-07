From: "Trenton D. Adams" <trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13018] 2.6.29 on MacBook 2,1 fails to reboot
Date: Mon, 6 Apr 2009 20:14:28 -0600
Message-ID: <9b1675090904061914m4d5e204lbf726a07ba406cf2@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.0OH.0Fn2JB@chimera>
	 <9b1675090904061913o614e02fdl22ef2cf795525a6d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=X56LaMZcDID/rg9B57UtiB0Z/lnZVXS9QA9rHrN8eBA=;
        b=NvLWoajYLpcX4JZpSokEMnrQImgxb17df0hT/QJalmSEjx+9Dg0lX2v+XZNQPbjquZ
         HX8wNmTcKgqrGUc613FOFaSKgmlnbq4vSNNuVwfqdTOr0wwaa94XODbPX3EDOCq88w8S
         1BzK0dGL+JuXYDI0cTGKSKnvPYBk7tIIO4qoQ=
In-Reply-To: <9b1675090904061913o614e02fdl22ef2cf795525a6d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alistair John Strachan <alistair-T7eSMZptz7IqdlJmJB21zg@public.gmane.org>, mstevens-APqb+XXLJz/QQQFqJy/XgFaTQe2KTcn/@public.gmane.org

On Mon, Apr 6, 2009 at 8:13 PM, Trenton D. Adams
<trenton.d.adams-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi Rafael,
>
> Yes, it is still a problem. =A0I have identified it as far down to be=
ing
> an alsa problem. =A0Please follow the other thread related to this. =A0=
I

Oops, sorry, I should make clear that it is not an alsa problem
specifically, but an alsa hda-intel driver issue, which is related to
alsa.
