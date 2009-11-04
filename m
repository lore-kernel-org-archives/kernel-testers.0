From: Fabio Comolli <fabio.comolli@gmail.com>
Subject: Re: [Bug #14372] ath5k wireless not working after rfkill [BISECTED]
Date: Wed, 4 Nov 2009 21:12:18 +0100
Message-ID: <b637ec0b0911041212w227884d9w64ae3894eabb82a2@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.xRH.vre5KB@chimera>
	 <b637ec0b0910261315u43033948ge041cf70292bfa58@mail.gmail.com>
	 <87aazddvft.fsf@basilikum.skogtun.org>
	 <20091104200714.GA24699@sucs.org>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758170AbZKDUMS@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=QanbfuAVJPf5A2zavg6mgknzTMCk02HOX0lZBf4kMv8=;
        b=pQr1yzbhFTUPBPW4+hcjZTO0kEYQPTNSyxvWjMFV8OPTZ3LoiT0w1c60Xu9zMW8TK2
         cGwE+Ke6inyZ1QvtvfK5HmAhIOVVRxvb3cf18wCN/psJhfuTkOF0BACzPL01Hn657+cd
         w8JSfbfL4tcKHlu3jvGI8JO3M8VtmRNKg2ayI=
In-Reply-To: <20091104200714.GA24699@sucs.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sitsofe Wheeler <sitsofe@yahoo.com>
Cc: Harald Arnesen <harald@skogtun.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Thanks for reporting. I guess I'll wait for -rc7 then.

On Wed, Nov 4, 2009 at 9:07 PM, Sitsofe Wheeler <sitsofe@yahoo.com> wrote:
> On Tue, Oct 27, 2009 at 10:42:46AM +0100, Harald Arnesen wrote:
>> Fabio Comolli <fabio.comolli@gmail.com> writes:
>>
>> > Still present in -rc5
>
> Help. I've just bisected this down to the same commit
> b56ab33d68638e6aafdbfc694025e8354a628f49 (that will teach me for not
> reading the whole thread) as I have the same problem on my EeePC 900.
>
> Still present in -rc6 and the latest git.
>
> --
> Sitsofe | http://sucs.org/~sits/
>
