From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #29312] Unmounting fails even after the underlying device is
 long gone
Date: Mon, 7 Mar 2011 18:41:47 +0100
Message-ID: <AANLkTimPYKP8S24ivRZXePhc5wM6n3ivzdpJSBaCvG6a@mail.gmail.com>
References: <t0W8Ea1iKeB.A.6xD.Lp3cNB@chimera> <GTlFTeOGjrB.A.DoE.Sq3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:in-reply-to:references:from
         :date:x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=bvguoKaHUQiDWU8V82kbRr+t+A+TrwENYzpWsanVLE4=;
        b=gg1AUW5OVtKVf5vKgyF9RKbAmnSRLlUg4AFvIsNhx72EQexMCNzn2Nk4BLJ3wFstYn
         iB4MzOgZHtksG4gqmAgblSBTxwUPHHPdXviqub6HuaHco+Ao8dJQUlYFQG0QhCQg0+u+
         vsJBQpMoUzaTjGHV0y9gWeOJb4xCuDtiJxUYc=
In-Reply-To: <GTlFTeOGjrB.A.DoE.Sq3cNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sun, Mar 6, 2011 at 1:10 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.37. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
29312
> Subject =A0 =A0 =A0 =A0 : Unmounting fails even after the underlying =
device is long gone
> Submitter =A0 =A0 =A0 : Bart Van Assche <bart.vanassche-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-02-17 19:20 (18 days old)

Unmounting works fine again with 2.6.38-rc7+, but I see now a huge
number of error messages in the system log:
# grep -c '^Mar  7 18:37:4.* kernel: sd 6:0:0:0: rejecting I/O to
offline device$' /var/log/messages
4987

Bart.
