From: Bob Copeland <me@bobcopeland.com>
Subject: Re: [Bug #13948] ath5k broken after suspend-to-ram
Date: Sun, 11 Oct 2009 20:19:43 -0400
Message-ID: <b6c5339f0910111719m58cd5442h3e081adfb388e8f1@mail.gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.oyE.O1l0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751670AbZJLAUY@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=assHYDu0PPrppl+89JEVYIpJLeWu0pvu3jbO0vaYtO8=;
        b=LKrBQPnBivOLYcS8F8Q3th4KsrPtslZ+p9cT7kwb+/hDjyoiY8dhl4B0Aq5tSB33D8
         O95xUrGoNvdZd8MMG3p/7TfuGIe3cqnlTH8sCMytrib2vtq1Ww+mM1a67VM5Nd7DOR+q
         6QiDnngXP3Q7g9771kZRJUw8BUwKbZf+RIWUk=
In-Reply-To: <L6tb-VyKHZK.A.oyE.O1l0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Stezenbach <js@sig21.net>, Nick Kossifidis <mickflemm@gmail.com>

On Sun, Oct 11, 2009 at 7:01 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13948
> Subject =A0 =A0 =A0 =A0 : ath5k broken after suspend-to-ram
> Submitter =A0 =A0 =A0 : Johannes Stezenbach <js@sig21.net>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-08-07 21:51 (66 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124968=
192727854&w=3D4
> Handled-By =A0 =A0 =A0: Nick Kossifidis <mickflemm@gmail.com>
> Patch =A0 =A0 =A0 =A0 =A0 : http://patchwork.kernel.org/patch/38550/

This patch was included in 2.6.31.2, so I believe this can go.

--=20
Bob Copeland %% www.bobcopeland.com
