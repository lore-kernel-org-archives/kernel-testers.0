From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11721] after upgrade to 2.6.27 i cannot navigate
Date: Sat, 25 Oct 2008 22:02:34 -0700 (PDT)
Message-ID: <20081025.220234.25683542.davem@davemloft.net>
References: <3ZqdCuOdOqB.A.EPE.fJ6AJB@chimera>
	<gLTYxg3cC1.A.S3E.xJ6AJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <gLTYxg3cC1.A.S3E.xJ6AJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sentiniate-IWqWACnzNjyonA0d6jMUrA@public.gmane.org, ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org

=46rom: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Sat, 25 Oct 2008 23:07:52 +0200 (CEST)

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11721
> Subject		: after upgrade to 2.6.27 i cannot navigate
> Submitter	: Aldo Maggi <sentiniate-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
> Date		: 2008-10-08 08:08 (18 days old)

Should be fixed by:

commit fd6149d332973bafa50f03ddb0ea9513e67f4517
Author: Ilpo J=E4rvinen <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Date:   Thu Oct 23 14:06:35 2008 -0700

    tcp: Restore ordering of TCP options for the sake of inter-operabil=
ity
   =20
    This is not our bug! Sadly some devices cannot cope with the change
    of TCP option ordering which was a result of the recent rewrite of
    the option code (not that there was some particular reason steming
    from the rewrite for the reordering) though any ordering of TCP
    options is perfectly legal. Thus we restore the original ordering
    to allow interoperability with/through such broken devices and add
    some warning about this trap. Since the reordering just happened
    without any particular reason, this change shouldn't cost us
    anything.
   =20
    There are already couple of known failure reports (within close
    proximity of the last release), so the problem might be more
    wide-spread than a single device. And other reports which may
    be due to the same problem though the symptoms were less obvious.
    Analysis of one of the case revealed (with very high probability)
    that sack capability cannot be negotiated as the first option
    (SYN never got a response).
   =20
    Signed-off-by: Ilpo J=E4rvinen <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
    Reported-by: Aldo Maggi <sentiniate-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
    Tested-by: Aldo Maggi <sentiniate-IWqWACnzNjyonA0d6jMUrA@public.gmane.org>
    Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

diff --git a/net/ipv4/tcp_output.c b/net/ipv4/tcp_output.c
index de54f02..e4c5ac9 100644
--- a/net/ipv4/tcp_output.c
+++ b/net/ipv4/tcp_output.c
@@ -362,6 +362,17 @@ struct tcp_out_options {
 	__u32 tsval, tsecr;	/* need to include OPTION_TS */
 };
=20
+/* Beware: Something in the Internet is very sensitive to the ordering=
 of
+ * TCP options, we learned this through the hard way, so be careful he=
re.
+ * Luckily we can at least blame others for their non-compliance but f=
rom
+ * inter-operatibility perspective it seems that we're somewhat stuck =
with
+ * the ordering which we have been using if we want to keep working wi=
th
+ * those broken things (not that it currently hurts anybody as there i=
sn't
+ * particular reason why the ordering would need to be changed).
+ *
+ * At least SACK_PERM as the first option is known to lead to a disast=
er
+ * (but it may well be that other scenarios fail similarly).
+ */
 static void tcp_options_write(__be32 *ptr, struct tcp_sock *tp,
 			      const struct tcp_out_options *opts,
 			      __u8 **md5_hash) {
@@ -376,6 +387,12 @@ static void tcp_options_write(__be32 *ptr, struct =
tcp_sock *tp,
 		*md5_hash =3D NULL;
 	}
=20
+	if (unlikely(opts->mss)) {
+		*ptr++ =3D htonl((TCPOPT_MSS << 24) |
+			       (TCPOLEN_MSS << 16) |
+			       opts->mss);
+	}
+
 	if (likely(OPTION_TS & opts->options)) {
 		if (unlikely(OPTION_SACK_ADVERTISE & opts->options)) {
 			*ptr++ =3D htonl((TCPOPT_SACK_PERM << 24) |
@@ -392,12 +409,6 @@ static void tcp_options_write(__be32 *ptr, struct =
tcp_sock *tp,
 		*ptr++ =3D htonl(opts->tsecr);
 	}
=20
-	if (unlikely(opts->mss)) {
-		*ptr++ =3D htonl((TCPOPT_MSS << 24) |
-			       (TCPOLEN_MSS << 16) |
-			       opts->mss);
-	}
-
 	if (unlikely(OPTION_SACK_ADVERTISE & opts->options &&
 		     !(OPTION_TS & opts->options))) {
 		*ptr++ =3D htonl((TCPOPT_NOP << 24) |
