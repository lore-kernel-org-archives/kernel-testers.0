From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Thu, 5 Feb 2009 15:35:25 -0800
Message-ID: <86802c440902051535n118339bes88ae48a54ce4711a@mail.gmail.com>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <20090129063118.GA3586@pmhahn.de>
	 <CGyEB0S4BpO.A.MFB.R5YiJB@chimera>
	 <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com>
	 <20090205232343.GA9455@pmhahn.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=VyWnvzVlxDrzNwLasIAFaeHW4C62oOMiBhXGllcY8Jw=;
        b=tUA+c9URZ7+rWw7/rJcV8kehR6TDldncCcVfZdxl4NA+0tQv2M5c7rGopWIBIVVTqt
         hmEAKGIXAyF25UQfD0nEHqAO5hq7bIiUDthVydx9oLnb1CcyI6EdETksuudWwYXSXytm
         YYBSFVooAJUol174x/57bN+qyaBIaZ9iIYpVw=
In-Reply-To: <20090205232343.GA9455-isSyJ6YaLy+zQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, Ayaz Abdulla <>

On Thu, Feb 5, 2009 at 3:23 PM, Philipp Matthias Hahn
<pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org> wrote:
> Hello!
>
> On Thu, Jan 29, 2009 at 10:53:40PM -0800, Yinghai Lu wrote:
>> can not find the reason why the WOL doesn't work...
>>
>> please post
>> 1. boot log for just after AC is pluged-in... ===> you should have
>> "nv_probe: set workaround bit for reversed mac addr"
>> 2. and boot log after boot from WOL...==> you have have "nv_probe: set
>> workaround bit for reversed mac addr" too.
>
> On Wed, Feb 04, 2009 at 11:58:53AM +0100, Rafael J. Wysocki wrote:
>> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=12614
>> Subject               : WOL with forcedeth broken since f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
>> Submitter     : Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
>> Date          : 2009-01-29 6:31 (7 days old)
>> References    : http://marc.info/?l=linux-kernel&m=123321232825316&w=4
>> Handled-By    : Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
>> Patch         : http://marc.info/?l=linux-kernel&m=123330459229248&w=4
>
> Strage, at the moment I can't seem to reproduce the problem. I've
> switched back to the version of 2.6.28.3 and now it seems to work.
> I'll continue with tesing.
>
> Some additional data:
> The BIOS-upgrade tool (Afud408.exe) resets the MAC address. I had to run
> the tool a second time to re-programm the MAC-address using its /M
> option. I useed the unreversed MAC-address back than.
> I also tried the reversed address once, but after that forcedeth.c
> complained about a wrong MAC-address.
>
> If I completely turn off the power (pull the plug), WOL doesn't work,
> even when it's enabled in the BIOS.
>
> Only after I'v started Linux, do "echo NMAC > /proc/acpi/wakeup" and
> "ethtool -s eth0 wol g" does it work again.
>
> Nether the less here's the output of dmesg:
>        forcedeth: Reverse Engineered nFoce ethernet driver. Version 0.61.
>        ACPI: PCI Interrupt Link [LMAC] enables at IRQ 23
>        forcedeth: 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
>        forcedeth: 0000:00:14.0: setting latency timer to 64
> *       nv_probe: MAC_ADDR_REV ELSE
>        nv_probe: set workaround bit for reversed mac addr

that means your BIOS doesn't reverse mac addr.
this is the one for new BIOS or old BIOS?

YH
