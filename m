From: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #13948] ath5k broken after suspend-to-ram
Date: Thu, 15 Oct 2009 23:38:13 +0200
Message-ID: <20091015213813.GA16582@sig21.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
 <L6tb-VyKHZK.A.oyE.O1l0KB@chimera>
 <b6c5339f0910111719m58cd5442h3e081adfb388e8f1@mail.gmail.com>
 <200910122324.30052.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200910122324.30052.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Bob Copeland <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Nick Kossifidis <mickflemm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Oct 12, 2009 at 11:24:29PM +0200, Rafael J. Wysocki wrote:
> On Monday 12 October 2009, Bob Copeland wrote:
> > On Sun, Oct 11, 2009 at 7:01 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13948
> > > Subject         : ath5k broken after suspend-to-ram
> > > Submitter       : Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
> > > Date            : 2009-08-07 21:51 (66 days old)
> > > References      : http://marc.info/?l=linux-kernel&m=124968192727854&w=4
> > > Handled-By      : Nick Kossifidis <mickflemm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Patch           : http://patchwork.kernel.org/patch/38550/
> > 
> > This patch was included in 2.6.31.2, so I believe this can go.
> 
> Thanks, closing.

Sorry for not responding earlier.  I now installed
2.6.31.4 on my old Thinkpad T42p and can confirm that
the issue is resolved.

Thanks
Johannes
