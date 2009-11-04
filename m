From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14372] ath5k wireless not working after rfkill [BISECTED]
Date: Wed, 4 Nov 2009 20:07:14 +0000
Message-ID: <20091104200714.GA24699@sucs.org>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.xRH.vre5KB@chimera> <b637ec0b0910261315u43033948ge041cf70292bfa58@mail.gmail.com> <87aazddvft.fsf@basilikum.skogtun.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <87aazddvft.fsf-exrMVdEGsfKEgazeWs4jLoSLwOllVvif@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Harald Arnesen <harald-xFPCWzl8UQNAfugRpC6u6w@public.gmane.org>
Cc: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Oct 27, 2009 at 10:42:46AM +0100, Harald Arnesen wrote:
> Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> writes:
> 
> > Still present in -rc5

Help. I've just bisected this down to the same commit
b56ab33d68638e6aafdbfc694025e8354a628f49 (that will teach me for not
reading the whole thread) as I have the same problem on my EeePC 900.

Still present in -rc6 and the latest git.

-- 
Sitsofe | http://sucs.org/~sits/
