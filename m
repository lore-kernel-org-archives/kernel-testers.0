From: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: Error on Make Modules [2.6.27-rc1]
Date: Sat, 02 Aug 2008 14:06:00 +0100
Message-ID: <1217682361.3719.51.camel@shinybook.infradead.org>
References: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com>
	 <20080801224153.GL19682@cs181140183.pp.htv.fi>
	 <1217631100.3719.44.camel@shinybook.infradead.org>
	 <20080802055803.GA16765@uranus.ravnborg.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080802055803.GA16765-QabhHTsIXMSnlFQ6Q1D1Y0B+6BGkLq7r@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>
Cc: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Avuton Olrich <avuton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sat, 2008-08-02 at 07:58 +0200, Sam Ravnborg wrote:
> Hi David.
> 
> On Fri, Aug 01, 2008 at 11:51:40PM +0100, David Woodhouse wrote:
> > On Sat, 2008-08-02 at 01:41 +0300, Adrian Bunk wrote:
> > > Can you somehow hide this message?
> > 
> > I'll leave the __fw_install one alone, so that if there's nothing to do
> > for 'make firmware_install' it says so rather than just doing nothing.
> > The other two can shut up, as requested.
> 
> I assume you push this one to Linus - right?

I have done.

-- 
dwmw2
