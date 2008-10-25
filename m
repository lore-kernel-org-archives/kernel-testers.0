From: Alexey Rempel <fishor-hi6Y0CQ0nG0@public.gmane.org>
Subject: why differnet wlan drivers need different settings?
Date: Sat, 25 Oct 2008 11:51:55 +0200
Message-ID: <200810251151.55940.fishor@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

May be this is the wrong plase to ask. 
The question is: Why differnet wlan drivers use different settings to stay 
silent - powered on but not trying to associate to any accespoint?
For example: ipw2200 - if wlan was connfigured like:

iwconfig wlan1 essid "my-ap" chan 6 ap my:aps:mac  key s:pass

this will normaly connect to my secure  AP. and if i set after this:
 
iwconfig wlan1 essid off ap off

it will connect to unsecure AP of my neighbour or of Dr.Evil :)
to disable association on ipw2200 i need to set all this and plus "chan 0".
With this cnowleg i want to set up iwl3945, and surprise it's not working. 
This driver do not accepted "chan 0" and instead of "essid off" it did 
"essid """

Are there any unified way to keep adapter powered on but not trying to 
associate to some AP.

