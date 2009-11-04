From: Darren Salt <linux@youmustbejoking.demon.co.uk>
Subject: Re: [Bug #14372] ath5k wireless not working after rfkill [BISECTED]
Date: Wed, 04 Nov 2009 22:35:11 +0000
Message-ID: <50BA90468C%linux@youmustbejoking.demon.co.uk>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> 
 <6dRYo8ss7vL.A.xRH.vre5KB@chimera> 
 <b637ec0b0910261315u43033948ge041cf70292bfa58@mail.gmail.com> 
 <87aazddvft.fsf@basilikum.skogtun.org> <20091104200714.GA24699@sucs.org> 
 <20091104220002.GH10786@tuxdriver.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933080AbZKDXLM@vger.kernel.org>
In-Reply-To: <20091104220002.GH10786@tuxdriver.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "John W. Linville" <linville@tuxdriver.com>
Cc: Sitsofe Wheeler <sitsofe@yahoo.com>, Harald Arnesen <harald@skogtun.org>, Fabio Comolli <fabio.comolli@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Len Brown <len.brown@intel.com>, Linus Torvalds <torvalds@linux-foundation.org>

I demand that John W. Linville may or may not have written...

> On Wed, Nov 04, 2009 at 08:07:14PM +0000, Sitsofe Wheeler wrote:
>> On Tue, Oct 27, 2009 at 10:42:46AM +0100, Harald Arnesen wrote:
>>> Fabio Comolli <fabio.comolli@gmail.com> writes:
>>>> Still present in -rc5
>> Help. I've just bisected this down to the same commit
>> b56ab33d68638e6aafdbfc694025e8354a628f49 (that will teach me for not
>> reading the whole thread) as I have the same problem on my EeePC 900.
>> Still present in -rc6 and the latest git.

> Thank you for taking the time to bisect this!

> I move that we revert it.  It appears to be a work-around for a staging
> driver that causes problems for a non-staging one...

Already in hand: a reversion patch was sent by Corentin Chary, and I have
mail from Len Brown saying that it has been applied. (The correct fix is
present in -rc5 and -rc6, so once this reversion is out of the way, I see no
reason not to close bug 13390.)

-- 
| Darren Salt            | linux at youmustbejoking | nr. Ashington, | Doon
| using Debian GNU/Linux | or ds    ,demon,co,uk    | Northumberland | Army
|   <URL:http://www.youmustbejoking.demon.co.uk/> (PGP 2.6, GPG keys)

About all some men accomplish in life is to send a son to Oxbridge.
