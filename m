From: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Sun, 3 May 2009 16:21:37 -0700
Message-ID: <e9c3a7c20905031621s2a1dc934x11ca1c50859ca75e@mail.gmail.com>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
	 <Fg2zLW93smL.A.oGE.Zd48JB@chimera> <49F4DF40.50302@intel.com>
	 <alpine.DEB.2.00.0904281507240.30946@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=RByp9z9a58ClkcApAunzNv3TrWDvIlCKle3xz+k/gmc=;
        b=lglvI2WRQZInAQNCDAaTTWkc9N7l/OoKlm2mlQRqWixvBQNUT27DSd0k+zHJrUCA/X
         6Vt/nWOzXz8CAvT7UKXWK3DuOmIUvtUAWPvAhkdNaE9m1/fZHOFAPs9tqzOVxHh33nuO
         MVNy6tHM18GW82fydShFeBkWw2YeB7fTgxGI4=
In-Reply-To: <alpine.DEB.2.00.0904281507240.30946-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

On Tue, Apr 28, 2009 at 3:14 PM, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> w=
rote:
> On Sun, 26 Apr 2009, Dan Williams wrote:
>
>> Rafael J. Wysocki wrote:
>> > This message has been generated automatically as a part of a repor=
t
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.29. =A0Please verify if it still should be listed and let=
 me know
>> > (either way).
>>
>> This is still unresolved.
>>
>> Stephen, please send your config.
>>
>
> Given the stack for the initial report, why would a config other than
> enabling CONFIG_DMA_ENGINE help if there's no ifdefs involved?

=2E..because I have been unable to reproduce it and wanted to start
eliminating differences in our respective setups.  I have booted an
oversubscribed (8-virtual / 2 physical cpus) kvm instance with 2.6.29
and have not seen this reproduce.

> This is happening in the for_each_possible_cpu() loop within
> dma_channel_rebalance(), which makes sense since the machine boots fi=
ne
> normally but not with `nosmp'.
>
> channel_table[] is not being initialized per-cpu for non-online cpus?

I'm grasping, but could this possibly be a kvm quirk whereby
cpu_possible_map gets out of sync with cpu_online_map in the 'nosmp'
case?

--
Dan
