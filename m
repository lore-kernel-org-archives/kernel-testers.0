Return-Path: <kernel-testers-owner@vger.kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ED4AC4332F
	for <kernel-testers@archiver.kernel.org>; Mon, 30 Oct 2023 19:32:50 +0000 (UTC)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231254AbjJ3Tcu (ORCPT
        <rfc822;kernel-testers@archiver.kernel.org>);
        Mon, 30 Oct 2023 15:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjJ3Tcu (ORCPT
        <rfc822;kernel-testers@vger.kernel.org>);
        Mon, 30 Oct 2023 15:32:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12726DE
        for <kernel-testers@vger.kernel.org>; Mon, 30 Oct 2023 12:32:48 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 921FEC433C7;
        Mon, 30 Oct 2023 19:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1698694367;
        bh=tFLz8trV9MU5U8dHDe0p45H3IJDI9/C/tXuKQ4viU7g=;
        h=Date:From:To:Subject:From;
        b=Wjw6APeZHrVWhPY2XTDkTRR1nrXBdOeDtG1PYcOaPKlnIouocs52+BqckXPE3wLcx
         dhPTvctNUM3wUwnM5IX66DDK1Xy1Dr0ax9QtinxVD+fGcfdIedFF3TKR/4cxy6QsNd
         1h8/VOxJmcX1xpuVcvt7xbFGYNMD4XAlWwom0w2A=
Date:   Mon, 30 Oct 2023 15:32:46 -0400
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     kernel-testers@vger.kernel.org
Subject: PSA: intent to sunset the kernel-testers list
Message-ID: <20231030-romantic-lively-sparrow-dce5d3@nitro>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Precedence: bulk
List-ID: <kernel-testers.vger.kernel.org>
X-Mailing-List: kernel-testers@vger.kernel.org

Hello:

We are in the process of migrating vger lists to new infrastructure. The
kernel-testers list has been largely inactive for the past 8 years, so the
current plan is to:

- close the list
- set up an auto-responder stating that the list is closed
- include a link in the auto-responder message that points to the list
  archives at https://lore.kernel.org/kernel-testers/

Please speak up if you have any objections to this plan.

-K
