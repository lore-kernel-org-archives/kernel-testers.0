From: Paul Rolland (=?UTF-8?B?44Od44O844Or44O744Ot44Op44Oz?=) 
	<rol@witbe.net>
Subject: Re: [Bug #12413] iwl3945 - Error for wireless request "Set Encode"
 (8B2A)
Date: Sun, 11 Jan 2009 19:04:55 +0100
Message-ID: <20090111190455.21b2f7f2@tux.DEF.witbe.net>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera>
	<nHCfeC0YLrE.A.Gn.LafaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754908AbZAKSF2@vger.kernel.org>
In-Reply-To: <nHCfeC0YLrE.A.Gn.LafaJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, rol@witbe.net

Hello,

On Sun, 11 Jan 2009 12:41:09 +0100 (CET)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12413
> Subject		: iwl3945 - Error for wireless request "Set
> Encode" (8B2A) Submitter	: Paul Rolland <rol@witbe.net>
> Date		: 2009-01-02 18:32 (10 days old)
> References	: http://marc.info/?l=linux-kernel&m=123092155803366&w=4
> 

This is fixed. Please consider it as a user-bug if you want. 
Anyway, the fix was to enable :
 
"Intel Wireless WiFi Next Gen AGN"

in addition to the already enabled support for the iwl3945. 
Not sure why we now need to enable both, but this solved the problem
for me.
Wifi is now fully functional.

Regards,
Paul


-- 
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

Please no HTML, I'm not a browser - Pas d'HTML, je ne suis pas un
navigateur "Some people dream of success... while others wake up and work
hard at it" 

Excuse me, but didn't I tell you there's NO HOPE for the survival of
OFFSET PRINTING?
