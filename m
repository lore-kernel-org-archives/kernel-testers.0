From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #30572] 2.6.38-rc7, OOM behaviour?
Date: Mon, 28 Mar 2011 15:37:23 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.1103281535130.7148@chino.kir.corp.google.com>
References: <lDYNS4ATQ-N.A._aD.9m5jNB@chimera> <40UNry85rJN.A.clE.1n5jNB@chimera>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="531368966-1846350481-1301351845=:7148"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1301351850; bh=xx1CUdrUOoSTMZYqqF/Zbjm7JIA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=WT/6lgw0Mj4kJbOB8mlq8KsC4i015Fsnwqab9TCO/hkQfHxFJVcKr9oRFGB7yu4vP
	 KbWdCcq5G7/T30Jf2ybGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=beta;
        h=domainkey-signature:date:from:x-x-sender:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:content-type;
        bh=5Zf8S8CLvIliI/NUP006WDxkU7diJ3eYF8JRv3iGk6w=;
        b=PPicmX5Q1+SiIAvvjR/IF7Hz7uh3Sbc012wLy/NVOQUpM3doKTkWq5h+CarEtIChtU
         dCLj97cEI/JMSuJpmuFQ==
In-Reply-To: <40UNry85rJN.A.clE.1n5jNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, =?UTF-8?Q?Mathias_Bur=C3=A9n?= <mathias.buren-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--531368966-1846350481-1301351845=:7148
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 27 Mar 2011, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.37.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=30572
> Subject		: 2.6.38-rc7, OOM behaviour?
> Submitter	: Mathias Burén <mathias.buren-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2011-03-02 19:33 (26 days old)
> Message-ID	: <AANLkTine5sru_JsK1LmRVa9fwxjPsaDdZUTFPCBi6A+c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=129909440018096&w=2
> 

The log that was presented in the References link is a normal oom killer 
log and would be typical if you exhausted 1GB of swap space.  It correctly 
kills the chrome process in the log provided, but other relevant portions 
seem to have been snipped for futher diagnosis.

Mathias, could you please provide the entire oom killer output, 
specifically the last time it was invoked (search for "invoked 
oom\-killer" and paste everything after the last occurrence)?
--531368966-1846350481-1301351845=:7148--
