From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #13694] i915 phantom TV
Date: Thu, 20 Aug 2009 11:07:14 -0700
Message-ID: <20090820110714.1c7cda8b@jbarnes-g45>
References: <xDf-7eSwYsC.A.-6B.klIjKB@chimera>
	<Era7U-todKF.A.pdC.HmIjKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755227AbZHTSHR@vger.kernel.org>
In-Reply-To: <Era7U-todKF.A.pdC.HmIjKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciek =?UTF-8?B?SsOzemlld2ljeg==?=  <mjoziew@gmail.com>

On Wed, 19 Aug 2009 22:40:46 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still
> should be listed and let me know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13694
> Subject		: i915 phantom TV
> Submitter	: Maciek J=C3=B3ziewicz <mjoziew@gmail.com>
> Date		: 2009-07-02 12:26 (49 days old)

This no longer occurs right?  Maybe it was fixed by

commit cb66c692d1ae257f32dc7f6085cf9cb9f2f6bab8
Author: Ma Ling <ling.ma@intel.com>
Date:   Sun May 31 16:58:32 2009 +0800

If we can identify the fix we can submit it to the 2.6.30.x stable
series.


--=20
Jesse Barnes, Intel Open Source Technology Center
