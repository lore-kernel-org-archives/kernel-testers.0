From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: s2disk hang update
Date: Tue, 16 Feb 2010 11:09:32 +0000
Message-ID: <9b2b86521002160309g26d60bd2t4c19bd2294b76c28@mail.gmail.com>
References: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com>
	 <9b2b86521002030314s6f84b482v8cd680be556f8a4d@mail.gmail.com>
	 <4B718F11.2010402@tuffmail.co.uk> <201002160008.51875.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=75AInnw4hVFYxltPH1zW3kDWs/U8/ncLh1B+mYU8cVM=;
        b=OHlX6RCcTjCCenlYjS3qG8MvIIYqjpShBF7DpaPxePnDnG4PF+v+U/XUIP/IBu+qsq
         Z/h/LfLIc96eEWaaPCDodhJN/SXvBDgLZND4N1ofBRjObUIrU+AxmH+X+DcdX3HnFkzo
         +jsGQwdo5O1gf9hfvkSLG/pius/bXoODneC+U=
In-Reply-To: <201002160008.51875.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 2/15/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Tuesday 09 February 2010, Alan Jenkins wrote:
>> Perhaps I spoke too soon.  I see the same hang if I run too many
>> applications.  The first hibernation fails with "not enough swap" as
>> expected, but the second or third attempt hangs (with the same backtrace
>> as before).
>>
>> The patch definitely helps though.  Without the patch, I see a hang the
>> first time I try to hibernate with too many applications running.
>
> Well, I have an idea.
>
> Can you try to apply the appended patch in addition and see if that helps?
>
> Rafael

It doesn't seem to help.

Thanks
Alan
