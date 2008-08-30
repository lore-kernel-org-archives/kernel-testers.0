From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [Bug #11237] corrupt PMD after resume
Date: Sat, 30 Aug 2008 22:49:06 +0100
Message-ID: <48B9C052.8090404@tuffmail.co.uk>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.kUG.jkbuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=2npWyqWsd5ZTCsD48AdBH9IZlfZdV71UMAgw01ziTV8=;
        b=uR4dBek3aC1kYTXxbw9V76MUjMkesHkpa/Y9PSau667Av7ylH9nRoPoqCNNyQU+D5C
         TcAoE5Gl2nHyoMuH3B+bfMpaeYEAx2eLCkp48PDmCVS7FMZ+xH/ONBM8qYGaRZ/xwbGo
         RPgDFRfrhu9lL+LEIkzT+Z4Kp9/hTxeUl4Okk=
In-Reply-To: <N8SeMoDzuxC.A.kUG.jkbuIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeremy Fitzhardinge <jeremy.fitzhardinge-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11237
> Subject		: corrupt PMD after resume
> Submitter	: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
> Date		: 2008-08-02 9:51 (29 days old)
> References	: http://marc.info/?l=linux-kernel&m=121767073424952&w=4
> Handled-By	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> 		  Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
>
>   

This has been isolated (to disparate buggy BIOSes), patches written and
tested.  It's more policy decisions now; mainly whether the workaround
(which wastes 64k) should be applied by default.  So I think you should add

Patch                   :
http://marc.info/?l=linux-kernel&m=122001615314700&w=2

Regards
Alan
