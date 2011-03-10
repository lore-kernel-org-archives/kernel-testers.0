From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #30322] BUG in xs_tcp_setup_socket
Date: Wed, 9 Mar 2011 16:48:44 -0800
Message-ID: <20110309164844.decd835f.akpm@linux-foundation.org>
References: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
	<sUKqYsqyJ4N.A.n0F.3-3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sUKqYsqyJ4N.A.n0F.3-3cNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Ben Hutchings <bhutchings-s/n/eUQHGBpZroRs9YW3xA@public.gmane.org>, Pavel Emelyanov <xemul-bzQdu9zFT3WakBO8gow8eQ@public.gmane.org>, linux-nfs-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Trond Myklebust <trond.myklebust-41N18TsMXrtuMpJDpNschA@public.gmane.org>, "J. Bruce Fields" <bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On Sun,  6 Mar 2011 13:40:43 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.36 and 2.6.37.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.36 and 2.6.37.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=30322
> Subject		: BUG in xs_tcp_setup_socket
> Submitter	: Ben Hutchings <bhutchings-s/n/eUQHGBpZroRs9YW3xA@public.gmane.org>
> Date		: 2011-03-01 20:34 (6 days old)
> Patch		: http://article.gmane.org/gmane.linux.nfs/38949
> 

Ben's patch is a no-brainer but it is not yet in mainline or linux-next. 
I'm not on linux-nfs so I recreated it as below.


Subject: sunrpc: propagate errors from xs_bind() through xs_create_sock()
From: Ben Hutchings <bhutchings-s/n/eUQHGBpZroRs9YW3xA@public.gmane.org>

xs_create_sock() is supposed to return a pointer or an ERR_PTR-encoded
error, but it currently returns 0 if xs_bind() fails.  This causes the
kernel to go BUG, as described in
https://bugzilla.kernel.org/show_bug.cgi?id=30322.


Signed-off-by: Ben Hutchings <bhutchings-s/n/eUQHGBpZroRs9YW3xA@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: Trond Myklebust <trond.myklebust-41N18TsMXrtuMpJDpNschA@public.gmane.org>
Cc: "J. Bruce Fields" <bfields-uC3wQj2KruNg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
---

 net/sunrpc/xprtsock.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff -puN net/sunrpc/xprtsock.c~sunrpc-propagate-errors-from-xs_bind-through-xs_create_sock net/sunrpc/xprtsock.c
--- a/net/sunrpc/xprtsock.c~sunrpc-propagate-errors-from-xs_bind-through-xs_create_sock
+++ a/net/sunrpc/xprtsock.c
@@ -1631,7 +1631,8 @@ static struct socket *xs_create_sock(str
 	}
 	xs_reclassify_socket(family, sock);
 
-	if (xs_bind(transport, sock)) {
+	err = xs_bind(transport, sock);
+	if (err) {
 		sock_release(sock);
 		goto out;
 	}
_
