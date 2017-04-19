From: Hubert Chaumette <hubert.chaumette-39ZsbGIQGT5GWvitb5QawA@public.gmane.org>
Subject: =?UTF-8?Q?re:_SYNC_-_takes_VERY_=C2=A0long_?=
 =?UTF-8?Q?complete_=C2=A0(_system_freezes)_!?=
Date: Wed, 19 Apr 2017 13:12:40 +0200 (CEST)
Message-ID: <598702296.8673.1492600360479.JavaMail.www@wwinf1p10>
References: <D24E577EA1E37B4788A3BFBC418F14A70750D5DD@wetsrvex01.loepfe.com>
Reply-To: Hubert Chaumette <hubert.chaumette-39ZsbGIQGT5GWvitb5QawA@public.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <D24E577EA1E37B4788A3BFBC418F14A70750D5DD-bUMf7dFpk4BvAH7Z6HRyZmXnswh1EIUO@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vellemans Noel <Noel.Vellemans-jVIO7HaJqZIeKeHsXy56Pg@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> Any clue what could be the cause, or any hints that could explain ( and solve ?) this ..

Assuming the regression is 100% reproducible, your best bet is IMO to do a (git) bisect between the two kernels versions.
Regards,

Hubert Chaumette
