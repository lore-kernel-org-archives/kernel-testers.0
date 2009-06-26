From: "Charles 'Mack' Rhinelander" <mrhinelander-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Newbie: howto get mm tree up to date using quilt
Date: Thu, 25 Jun 2009 21:56:18 -0700
Message-ID: <1faf47660906252156m425de064p66f60ac942402420@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=vUkLvngRFmDs8SYVLKm4kcZhEhxkOcZiYoUs7iL2TOc=;
        b=MagVS5kRFA039H6wrhJgcq6JHfr8k8kxxxLXbXtJDu9X/vrDpr4l9jmFbEIfwIqdxM
         qdnCfkdFSHYQYRQhgsYJGqOy45kxAM8aNFDzypc6hTzC1twxL6ppC1k3uk8CZsDTDswv
         BuOfCld7zXwzOgmWI5Uxk9gqxgXGBWM/nW6dk=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I'm running 2.6.28-rc2-mm1, the latest mm tree. I'd like to patch it
so it's up to date, and try using the daily snapshots.

Can somebody please tell me the steps to do this? I've diligently read
"The Kernel Tester's Guide" and done many google searches, and I've
got quilt, but I can't tell how these instructions apply to the
contents of /pub/linux/kernel/people/akpm/patches/2.6/2.6.28-rc2/2.6.28-rc2-mm1
For example, there's no "series" file, it's called "patch-series"

Am I supposed to change the name?  And what all are "broken-out,"
"hot-fixes," "patch-list....?"

Thanks

Mack Rhinelander
