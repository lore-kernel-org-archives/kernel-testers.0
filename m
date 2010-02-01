From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error ffffffff810251b5
 cr2 0
Date: Sun, 31 Jan 2010 17:39:22 -0800
Message-ID: <4B6630CA.9010207@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=+TcNslR1wZDCC8LMaQmMj73hU6hWPz6zLV+CRlFMDD8=;
        b=ivHWLhdxKNICvLATVlAy8nM3oqLvwZZVOpJghdlM8yKN/qHeiwozfwZ1IkevpeqwxP
         vehVoGzEwXyDT3jUj50CCkEbfwXEbeU4YKIcVAeadG3kSpIV7zNNHmOUDlSed/e8A3fn
         ScVQPFUlGwpm0eCjdwXhlJgz9RWkDXmdJzrZk=
In-Reply-To: <de962C6zBxL.A.H1G.1HiZLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On 01/31/10 16:43, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
> Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
> Submitter	: Justin P. Mattock<justinmattock@gmail.com>
> Date		: 2009-10-23 16:45 (101 days old)
> References	: http://lkml.org/lkml/2009/10/23/252
>
>
>


yeah still hitting this.
looking at the issue if I change:

@@ 260

if ((class == 0xffffffff))
	continue;
to

if ((class == 0xffffffff || 0xffffffffffffffff))
	continue;

I'm able to boot, but don't have enough knowledge to know
what is really happening(or how to execute this).
will continue looking at this
(hopefully I get somewhere on this);

Justin P. Mattock
