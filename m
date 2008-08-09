From: Felipe Balbi <me-uiRdBs8odbtmTBlB0Cgj/Q@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Sat, 9 Aug 2008 18:26:33 +0300
Message-ID: <20080809152632.GA7574@frodo>
References: <Pine.LNX.4.44L0.0808061814250.2145-100000@iolanthe.rowland.org> <489D9B46.60001@otello.alma.unibo.it>
Reply-To: me-uiRdBs8odbtmTBlB0Cgj/Q@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <489D9B46.60001-gmoNqwowlqBr8A+qpt3pXFzrSV/HdtiB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Diego Zuccato <diego-gmoNqwowlqBr8A+qpt3pXFzrSV/HdtiB@public.gmane.org>
Cc: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, Aug 09, 2008 at 03:27:34PM +0200, Diego Zuccato wrote:
> Urgh... What happens if it contains a mounted filesystem?
> Seems quite dangerous...

It still enumerating, you'll never have a mounted fs at this point :-)

-- 
balbi
