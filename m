From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #13232] ext3/4 with synchronous writes gets wedged by
	Postfix
Date: Tue, 19 May 2009 16:41:52 -0400
Message-ID: <20090519204152.GE9053@mit.edu>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.yJG.DA0DKB@chimera> <20090518132517.GL32019@mit.edu> <20090519171713.GA3354@dbwatson.ukfsn.org> <20090519175312.GC9053@mit.edu> <18962.64002.324970.49512@stoffel.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <18962.64002.324970.49512-HgN6juyGXH5AfugRpC6u6w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Stoffel <john-HgN6juyGXH5AfugRpC6u6w@public.gmane.org>
Cc: David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>, Al Viro <viro-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, May 19, 2009 at 02:27:14PM -0400, John Stoffel wrote:
> I wonder if this is the reason my main file server has been locking up
> solid under 2.6.29 or newer kernels lately, but 2.6.28 is rock solid.
> Since it's my main file server at home, and with my home dir NFS
> mounted from it onto another system, it's been hard to catch.  I spent
> some time fiddling around getting netconsole setup, but then I ran out
> of time.

Unless you have your partition mounted with the "sync" mount option
(which has negative performance implifications; it makes sense for a
mail queue directory, but not necessarily for a general purpose file
server) or you have a directory chattr'ed with the sync flag, probably
not...

If you want to try it, though, the patch is available here:

   http://bugzilla.kernel.org/attachment.cgi?id=21436

> If someone could send me the patch, I'll apply it and see how well
> 2.6.29.[34] works, and whether or not 2.6.30-rcN works as well.
> Reproducing the problem was pretty easy for me.  

Anything on the console?  Any oops messages, or soft lockup warnings?

What filesystem(s) are you using? 


						- Ted
