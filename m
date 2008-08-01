From: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: Error on Make Modules [2.6.27-rc1]
Date: Fri, 01 Aug 2008 23:51:40 +0100
Message-ID: <1217631100.3719.44.camel@shinybook.infradead.org>
References: <264b990a0807312306jc064bbbp144342de555ac4f1@mail.gmail.com>
	 <20080801224153.GL19682@cs181140183.pp.htv.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080801224153.GL19682-re2QNgSbS3j4D6uPqz5PAwR5/fbUUdgG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Yudha Harimantoro T <yudha.ht-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sam Ravnborg <sam-uyr5N9Q2VtJg9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Avuton Olrich <avuton-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sat, 2008-08-02 at 01:41 +0300, Adrian Bunk wrote:
> Can you somehow hide this message?

I'll leave the __fw_install one alone, so that if there's nothing to do
for 'make firmware_install' it says so rather than just doing nothing.
The other two can shut up, as requested.

Signed-off-by: David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

diff --git a/scripts/Makefile.fwinst b/scripts/Makefile.fwinst
index f63a663..6bf8e87 100644
--- a/scripts/Makefile.fwinst
+++ b/scripts/Makefile.fwinst
@@ -50,8 +50,12 @@ PHONY +=  __fw_install __fw_modinst FORCE
 .PHONY: $(PHONY)
 
 __fw_install: $(installed-fw)
+
 __fw_modinst: $(installed-mod-fw)
+	@:
+
 __fw_modbuild: $(addprefix $(obj)/,$(mod-fw))
+	@:
 
 FORCE:
 

-- 
David Woodhouse                            Open Source Technology Centre
David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org                              Intel Corporation
