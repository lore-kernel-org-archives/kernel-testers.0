From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #27532] ath9k prevents CPU from entering lower C-states
Date: Sun, 13 Feb 2011 00:38:28 +0100 (CET)
Message-ID: <1z1FRILH7uF.A.O-.IgxVNB@chimera>
References: <9Pzlq5PlEtH.A.DU.efxVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9Pzlq5PlEtH.A.DU.efxVNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Thomas=20B=C3=A4chler?= <thomas-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D27532
Subject		: ath9k prevents CPU from entering lower C-states
Submitter	: Thomas B=C3=A4chler <thomas-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Date		: 2011-01-24 22:43 (20 days old)

