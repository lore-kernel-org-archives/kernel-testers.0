From: Paul Rolland (=?UTF-8?B?44Od44O844Or44O744Ot44Op44Oz?=) 
	<rol@witbe.net>
Subject: Re: [Bug #12413] iwl3945 - Error for wireless request "Set Encode"
 (8B2A)
Date: Sun, 11 Jan 2009 16:24:38 +0100
Message-ID: <20090111162438.3d6cf5b1@tux.DEF.witbe.net>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera>
	<nHCfeC0YLrE.A.Gn.LafaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754724AbZAKPZg@vger.kernel.org>
In-Reply-To: <nHCfeC0YLrE.A.Gn.LafaJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, rol@witbe.net

Hello Rafael,

On Sun, 11 Jan 2009 12:41:09 +0100 (CET)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12413
> Subject		: iwl3945 - Error for wireless request "Set
> Encode" (8B2A) Submitter	: Paul Rolland <rol@witbe.net>
> Date		: 2009-01-02 18:32 (10 days old)
> References	: http://marc.info/?l=linux-kernel&m=123092155803366&w=4
> 

I'm still doing some tests... I've managed to turn on the Wifi interface
without getting this message, but I had to redo my .config, adding some
more options. Upgrading by using previous .config doesn't seem to be enough
to keep iw3945 working. You need to enable :
"Intel Wireless WiFi Next Gen AGN"

Now, I can associate, I can retrieve an IP address with DHCP and I can ping
the default GW (the AP in my case). But it seems something still odd with
routing... 

Paul

-- 
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

Please no HTML, I'm not a browser - Pas d'HTML, je ne suis pas un
navigateur "Some people dream of success... while others wake up and work
hard at it" 

The rules of editing press releases are: 

1. Identify the crucial elements of the story.
2. Omit at least one of them.

   -- From a Slashdot.org post. We can only guess whether Microsoft
      uses this policy or not.
