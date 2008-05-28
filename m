From: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Subject: Re: Probmels with S3-suspend/resume... . Is ist xorg or kernel bug?
Date: Wed, 28 May 2008 08:21:00 +0100
Message-ID: <g1j1na$5va$1@ger.gmane.org>
References: <1211951952.17454.13.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

<posted & mailed>

Alexey Fisher wrote:

> Recently was fixed supend/resume bug annoyed my PC for a long time. So i
> startet testing more suspend and do not use poweroff anymore:) After 3.
> suspend i started getting some problems, it will get black screen, and i
> need to switch to console and back to X to make it work ( ctrl+alt+f1 &
> ctrl+alt+f7 ) at the same time console ( ctrl+alt+f1 ) do not work any
> more, complete screen is covered with blinking "eeeeeeeeeeeeeeeee".
> 
> So the question is is ist kernel bug or xorg ?

Which kernel, which xorg, what's the output of cat /proc/modules , does it
happen if you suspend and resume when X is not running too?

-- 
Sitsofe | http://sucs.org/~sits/

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
