From: Rik van Riel <riel@redhat.com>
Subject: Re: [Bug #15672] KVM bug, git bisected
Date: Tue, 20 Apr 2010 23:36:54 -0400
Message-ID: <4BCE72D6.6010809@redhat.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.7L.6RSzLB@tosh> <4BCE188A.1060408@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4BCE188A.1060408@redhat.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Kent Overstreet <kent.overstreet@gmail.com>

On 04/20/2010 05:11 PM, Rik van Riel wrote:
> On 04/19/2010 11:19 PM, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a summary
>> report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.33. Please verify if it still should be listed and let the
>> tracking team
>> know (either way).
>>
>>
>> Bug-Entry : http://bugzilla.kernel.org/show_bug.cgi?id=15672
>> Subject : KVM bug, git bisected
>> Submitter : Kent Overstreet<kent.overstreet@gmail.com>
>> Date : 2010-03-27 12:43 (24 days old)
>> First-Bad-Commit:
>> http://kernel.org/git/linus/5beb49305251e5669852ed541e8e2f2f7696c53e
>> Message-ID :<4BADFD74.8060904@gmail.com>
>> References : http://marc.info/?l=linux-kernel&m=126969385121711&w=2
>
> Should be fixed by commit ea90002b0fa7bdee86ec22eba1d951f30bf043a6

Never mind me - this is a harmless (but loud) overflow
of PREEMPT_BITS in the preempt count.
