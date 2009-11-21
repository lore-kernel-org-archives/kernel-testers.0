From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk@iki.fi>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Sat, 21 Nov 2009 19:47:39 +0200
Message-ID: <11fae7c70911210947t6b9e0bbdx2c7f5c252977f4f9@mail.gmail.com>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	 <mYW9sxtWd2G.A.D7G.GFACLB@chimera>
Reply-To: q-funk@iki.fi
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756617AbZKURrg@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type;
        bh=TG7jslQWWTlbX57wtfHAMfa1Rc4p3ZgiGs7JJeI0zpI=;
        b=FUpP5KDd/BOVqdeYkjNVN3PHcGChvVojAYRHohcJ3/kukXOO+embll2HsQVbjI7y7N
         htocRpkH5rObo2MMpXTsgTZ1DunQcm6RVOecNhWiJGfUaZxzQ1YC8OrBIV0p0Vax/0C4
         2Xncpz7VVr28P95/QsF2uhjDhq05jaFPQ2gsw=
In-Reply-To: <mYW9sxtWd2G.A.D7G.GFACLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>

No, it is not resolved.

Attachments have been recently added to the bug and it would be highly
desirable for whoever introduced those regressions in 2.6.31 to
examine them and participate in resolving the issue. Alternately,
reverting those ACL caching changes to 2.6.30 status would be equally
acceptable as a solution.
