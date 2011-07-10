From: Pekka Enberg <penberg@kernel.org>
Subject: Re: [Bug #38132] [Warning] 2.6.39.x latencytop
Date: Sun, 10 Jul 2011 14:53:05 +0300
Message-ID: <CAOJsxLEGqpcQP3S+TLBjpRsM=UTk=zyuHBoswXkVwbHsLaDqqg@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.Y3H.jlYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Of1q1setF1W8+CufKrHhiP0nCSMENmGmy0rFbJFKdsE=;
        b=EM6IeudE+8mQBPbH8RUe/Wx7wWJOsm+RlUSYLNFonelLbJPGWZWMRdN0VseLQRqLNp
         E27gNuu4W92roQJc6RdgfteBdK5TPuYhzf3BCWJFleeFdBIazvPhpRxsQsYeNrIXOt9D
         cJRCqBVqTIXZcfSkkR4vdB2R0LmhpUMQJ1z5g=
In-Reply-To: <gK_efVqs2fP.A.Y3H.jlYGOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Andrew Watts <akwatts@ymail.com>, Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@elte.hu>, Frederic Weisbecker <fweisbec@gmail.com>

On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
38132
> Subject =A0 =A0 =A0 =A0 : [Warning] 2.6.39.x latencytop
> Submitter =A0 =A0 =A0 : Andrew Watts <akwatts@ymail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-06-14 17:07 (27 days old)
> Message-ID =A0 =A0 =A0: <80098.5633.qm@web111013.mail.gq1.yahoo.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D130807=
128506490&w=3D2

This is a WARN_ON added in commit 6752ab4a ("tracing: Deprecate
tracing_enabled for tracing_on") that lets the user know about
deprecated ABI. It's somewhat unfortunate that there's no mention in
the changelog if everyone agreed on the deprecation or not...

That said, assuming the deprecation is OK (hi Steven, Frederic, Ingo!)
I think this issue can be closed.

                        Pekka
