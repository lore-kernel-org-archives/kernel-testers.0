From: Hans de Bruin <bruinjm-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: root on nfs or other troubles
Date: Wed, 25 Mar 2009 22:53:04 +0100
Message-ID: <49CAA7C0.3040109@xs4all.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

The setup I have here at home consists of a nfs server, and two disk 
less clients. Every day the nfs server creates a fresh kernel for the 
clients. One of the clients has been inactive for a while (about half a 
year) and is now annoyingly unstable. Either the hardware or the kernel 
or something else has degraded. The client seams to hang on a nfs 
action. The mouse keeps moving when in X, and some screen objects 
respond to mouse movement. When in terminal mode (I don't trust the 
openchrome x driver) key strokes end up on the terminal. Pinging the 
client from another machine ends in timeouts.

I have pinged the client for an hour or two. no problem. Ran several 
ping -A's as root, no problem. Ran a normal ping and a 'find / -name 
bhjfihreibu -print'  and within minutes the ping died.

I could try an older kernel, say about half a year ago, but things have 
changed in haf a year like the kernel verion of the nfs server, nfs 
parmeters and kernel .config file. The second client (different 
hardware) is as stable as a rock.

Al the kernel options under kernel hacking in make menuconfig are off. 
Is there any that I would want to turn on?

-- 
Hans
