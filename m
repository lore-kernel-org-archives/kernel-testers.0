From: Oliver Neukum <oneukum@suse.com>
Subject: Re: [PATCH v7] input: tablet: add Pegasus Notetaker tablet driver
Date: Fri, 10 Jun 2016 17:59:54 +0200
Message-ID: <1465574394.3339.0.camel@suse.com>
References: <1464785703-5555-1-git-send-email-martink@posteo.de>
	 <1465484429.17248.13.camel@suse.com> <575AC03C.2010306@posteo.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-input-owner@vger.kernel.org>
In-Reply-To: <575AC03C.2010306@posteo.de>
Sender: linux-input-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Martin Kepplinger <martink@posteo.de>
Cc: dmitry.torokhov@gmail.com, kernel-testers@vger.kernel.org, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org

On Fri, 2016-06-10 at 15:27 +0200, Martin Kepplinger wrote:
> >> +    input_set_abs_params(input_dev, ABS_X, -1500, 1500, 8, 0);
> >> +    input_set_abs_params(input_dev, ABS_Y, 1600, 3000, 8, 0);
> >> +
> >> +    pegasus_set_mode(pegasus, PEN_MODE_XY, NOTETAKER_LED_MOUSE);
> > 
> > If you need to do this here. It is also needed in reset_resume()
> > 
> 
> This is done in open() now.

You must do it conditionally in reset_resume() then.

	Regards
		Oliver


