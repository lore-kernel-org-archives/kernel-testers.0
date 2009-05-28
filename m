From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.30-rc6: usb printer does not work
Date: Thu, 28 May 2009 21:07:26 +0400
Message-ID: <20090528170726.GA13714@orion>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:subject
         :message-id:mime-version:content-type:content-disposition:user-agent;
        bh=X+2R9/l+GMJZLcV3mnIN4xYE5j7M/+ezmuMeSU2vc38=;
        b=BdcXFeROF4AOu97RsJ+xYyoBLhEm2oob5SxWFv9o++H5+wUW2JehclUClEnpxyUlDl
         wwUngCrkAl52NJLP5o6RTBSgv5u3ZkEgnPCKeCgKRbaVDb6ErzDCamIx5sFdtgNNU3zB
         aDaqTWJEQ0jTdTuXBtj6drphPRtRN2vKpPKnY=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi

kernel is 2.6.30-rc6-00065-g3633832

It worked sometime ago, I do not remember,
perhaps it was 2.6.29.

# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub



hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001803 POWER sig=j CSC CONNECT
hub 1-0:1.0: port 2, status 0501, change 0001, 480 Mb/s
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 36
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: default language 0x0409
usb 1-2: New USB device found, idVendor=03f0, idProduct=4717
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: HP Color LaserJet CP1215
usb 1-2: Manufacturer: Hewlett-Packard
usb 1-2: SerialNumber: LJ0AXJ9
device: '1-2': device_add
bus: 'usb': add device 1-2
usb 1-2: uevent
bus: 'usb': driver_probe_device: matched device 1-2 with driver usb
bus: 'usb': really_probe: probing driver usb with device 1-2
usb 1-2: usb_probe_device
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: adding 1-2:1.0 (config #1, interface 0)
device: '1-2:1.0': device_add
bus: 'usb': add device 1-2:1.0
usb 1-2:1.0: uevent
bus: 'usb': driver_probe_device: matched device 1-2:1.0 with driver usblp
bus: 'usb': really_probe: probing driver usblp with device 1-2:1.0
usblp 1-2:1.0: usb_probe_interface
usblp 1-2:1.0: usb_probe_interface - got id
device: 'usbdev1.36_ep01': device_add
device: 'usbdev1.36_ep81': device_add
drivers/usb/core/file.c: looking for a minor, starting at 0
device class 'usb': registering
device: 'lp0': device_add
usblp0: USB Bidirectional printer dev 36 if 0 alt 0 proto 2 vid 0x03F0 pid 0x4717
driver: '1-2:1.0': driver_bound: bound to device 'usblp'
bus: 'usb': really_probe: bound device 1-2:1.0 to driver usblp
drivers/usb/core/inode.c: creating file '036'
driver: '1-2': driver_bound: bound to device 'usb'
bus: 'usb': really_probe: bound device 1-2 to driver usb
device: 'usbdev1.36_ep00': device_add
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001802 POWER sig=j CSC
hub 1-0:1.0: port 2, status 0100, change 0001, 12 Mb/s
usb 1-2: USB disconnect, address 36
usb 1-2: unregistering device
usb 1-2: usb_disable_device nuking all URBs
usb 1-2: unregistering interface 1-2:1.0
device: 'usbdev1.36_ep01': device_unregister
device: 'usbdev1.36_ep81': device_unregister
bus: 'usb': remove device 1-2:1.0
drivers/usb/core/file.c: removing 0 minor
device: 'lp0': device_unregister
device: 'lp0': device_create_release
device class 'usb': unregistering
class 'usb': release.
class_create_release called for usb
usblp0: removed
usb 1-2:1.0: uevent
device: 'usbdev1.36_ep00': device_unregister
bus: 'usb': remove device 1-2
usb 1-2: uevent
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 37
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: default language 0x0409
usb 1-2: New USB device found, idVendor=03f0, idProduct=4717
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: HP Color LaserJet CP1215
usb 1-2: Manufacturer: Hewlett-Packard
usb 1-2: SerialNumber: LJ0AXJ9
device: '1-2': device_add
bus: 'usb': add device 1-2
usb 1-2: uevent
bus: 'usb': driver_probe_device: matched device 1-2 with driver usb
bus: 'usb': really_probe: probing driver usb with device 1-2
usb 1-2: usb_probe_device
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: adding 1-2:1.0 (config #1, interface 0)
device: '1-2:1.0': device_add
bus: 'usb': add device 1-2:1.0
usb 1-2:1.0: uevent
bus: 'usb': driver_probe_device: matched device 1-2:1.0 with driver usblp
bus: 'usb': really_probe: probing driver usblp with device 1-2:1.0
usblp 1-2:1.0: usb_probe_interface
usblp 1-2:1.0: usb_probe_interface - got id
device: 'usbdev1.37_ep01': device_add
device: 'usbdev1.37_ep81': device_add
drivers/usb/core/file.c: looking for a minor, starting at 0
device class 'usb': registering
device: 'lp0': device_add
usblp0: USB Bidirectional printer dev 37 if 0 alt 0 proto 2 vid 0x03F0 pid 0x4717
driver: '1-2:1.0': driver_bound: bound to device 'usblp'
bus: 'usb': really_probe: bound device 1-2:1.0 to driver usblp
drivers/usb/core/inode.c: creating file '037'
driver: '1-2': driver_bound: bound to device 'usb'
bus: 'usb': really_probe: bound device 1-2 to driver usb
device: 'usbdev1.37_ep00': device_add
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001802 POWER sig=j CSC
hub 1-0:1.0: port 2, status 0100, change 0001, 12 Mb/s
usb 1-2: USB disconnect, address 37
usb 1-2: unregistering device
usb 1-2: usb_disable_device nuking all URBs
usb 1-2: unregistering interface 1-2:1.0
device: 'usbdev1.37_ep01': device_unregister
device: 'usbdev1.37_ep81': device_unregister
bus: 'usb': remove device 1-2:1.0
drivers/usb/core/file.c: removing 0 minor
device: 'lp0': device_unregister
device: 'lp0': device_create_release
device class 'usb': unregistering
class 'usb': release.
class_create_release called for usb
usblp0: removed
usb 1-2:1.0: uevent
device: 'usbdev1.37_ep00': device_unregister
bus: 'usb': remove device 1-2
usb 1-2: uevent
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 38
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: default language 0x0409
usb 1-2: New USB device found, idVendor=03f0, idProduct=4717
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: HP Color LaserJet CP1215
usb 1-2: Manufacturer: Hewlett-Packard
usb 1-2: SerialNumber: LJ0AXJ9
device: '1-2': device_add
bus: 'usb': add device 1-2
usb 1-2: uevent
bus: 'usb': driver_probe_device: matched device 1-2 with driver usb
bus: 'usb': really_probe: probing driver usb with device 1-2
usb 1-2: usb_probe_device
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: adding 1-2:1.0 (config #1, interface 0)
device: '1-2:1.0': device_add
bus: 'usb': add device 1-2:1.0
usb 1-2:1.0: uevent
bus: 'usb': driver_probe_device: matched device 1-2:1.0 with driver usblp
bus: 'usb': really_probe: probing driver usblp with device 1-2:1.0
usblp 1-2:1.0: usb_probe_interface
usblp 1-2:1.0: usb_probe_interface - got id
device: 'usbdev1.38_ep01': device_add
device: 'usbdev1.38_ep81': device_add
drivers/usb/core/file.c: looking for a minor, starting at 0
device class 'usb': registering
device: 'lp0': device_add
usblp0: USB Bidirectional printer dev 38 if 0 alt 0 proto 2 vid 0x03F0 pid 0x4717
driver: '1-2:1.0': driver_bound: bound to device 'usblp'
bus: 'usb': really_probe: bound device 1-2:1.0 to driver usblp
drivers/usb/core/inode.c: creating file '038'
driver: '1-2': driver_bound: bound to device 'usb'
bus: 'usb': really_probe: bound device 1-2 to driver usb
device: 'usbdev1.38_ep00': device_add
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001802 POWER sig=j CSC
hub 1-0:1.0: port 2, status 0100, change 0001, 12 Mb/s
usb 1-2: USB disconnect, address 38
usb 1-2: unregistering device
usb 1-2: usb_disable_device nuking all URBs
usb 1-2: unregistering interface 1-2:1.0
device: 'usbdev1.38_ep01': device_unregister
device: 'usbdev1.38_ep81': device_unregister
bus: 'usb': remove device 1-2:1.0
drivers/usb/core/file.c: removing 0 minor
device: 'lp0': device_unregister
device: 'lp0': device_create_release
device class 'usb': unregistering
class 'usb': release.
class_create_release called for usb
usblp0: removed
usb 1-2:1.0: uevent
device: 'usbdev1.38_ep00': device_unregister
bus: 'usb': remove device 1-2
usb 1-2: uevent
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 39
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: default language 0x0409
usb 1-2: New USB device found, idVendor=03f0, idProduct=4717
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: HP Color LaserJet CP1215
usb 1-2: Manufacturer: Hewlett-Packard
usb 1-2: SerialNumber: LJ0AXJ9
device: '1-2': device_add
bus: 'usb': add device 1-2
usb 1-2: uevent
bus: 'usb': driver_probe_device: matched device 1-2 with driver usb
bus: 'usb': really_probe: probing driver usb with device 1-2
usb 1-2: usb_probe_device
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: adding 1-2:1.0 (config #1, interface 0)
device: '1-2:1.0': device_add
bus: 'usb': add device 1-2:1.0
usb 1-2:1.0: uevent
bus: 'usb': driver_probe_device: matched device 1-2:1.0 with driver usblp
bus: 'usb': really_probe: probing driver usblp with device 1-2:1.0
usblp 1-2:1.0: usb_probe_interface
usblp 1-2:1.0: usb_probe_interface - got id
device: 'usbdev1.39_ep01': device_add
device: 'usbdev1.39_ep81': device_add
drivers/usb/core/file.c: looking for a minor, starting at 0
device class 'usb': registering
device: 'lp0': device_add
usblp0: USB Bidirectional printer dev 39 if 0 alt 0 proto 2 vid 0x03F0 pid 0x4717
driver: '1-2:1.0': driver_bound: bound to device 'usblp'
bus: 'usb': really_probe: bound device 1-2:1.0 to driver usblp
drivers/usb/core/inode.c: creating file '039'
driver: '1-2': driver_bound: bound to device 'usb'
bus: 'usb': really_probe: bound device 1-2 to driver usb
device: 'usbdev1.39_ep00': device_add
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001803 POWER sig=j CSC CONNECT
hub 1-0:1.0: port 2, status 0501, change 0001, 480 Mb/s
usb 1-2: USB disconnect, address 39
usb 1-2: unregistering device
usb 1-2: usb_disable_device nuking all URBs
usb 1-2: unregistering interface 1-2:1.0
device: 'usbdev1.39_ep01': device_unregister
device: 'usbdev1.39_ep81': device_unregister
bus: 'usb': remove device 1-2:1.0
drivers/usb/core/file.c: removing 0 minor
device: 'lp0': device_unregister
device: 'lp0': device_create_release
device class 'usb': unregistering
class 'usb': release.
class_create_release called for usb
usblp0: removed
usb 1-2:1.0: uevent
device: 'usbdev1.39_ep00': device_unregister
bus: 'usb': remove device 1-2
usb 1-2: uevent
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 40
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: default language 0x0409
usb 1-2: New USB device found, idVendor=03f0, idProduct=4717
usb 1-2: New USB device strings: Mfr=1, Product=2, SerialNumber=3
usb 1-2: Product: HP Color LaserJet CP1215
usb 1-2: Manufacturer: Hewlett-Packard
usb 1-2: SerialNumber: LJ0AXJ9
device: '1-2': device_add
bus: 'usb': add device 1-2
usb 1-2: uevent
bus: 'usb': driver_probe_device: matched device 1-2 with driver usb
bus: 'usb': really_probe: probing driver usb with device 1-2
usb 1-2: usb_probe_device
usb 1-2: configuration #1 chosen from 1 choice
usb 1-2: adding 1-2:1.0 (config #1, interface 0)
device: '1-2:1.0': device_add
bus: 'usb': add device 1-2:1.0
usb 1-2:1.0: uevent
bus: 'usb': driver_probe_device: matched device 1-2:1.0 with driver usblp
bus: 'usb': really_probe: probing driver usblp with device 1-2:1.0
usblp 1-2:1.0: usb_probe_interface
usblp 1-2:1.0: usb_probe_interface - got id
device: 'usbdev1.40_ep01': device_add
device: 'usbdev1.40_ep81': device_add
drivers/usb/core/file.c: looking for a minor, starting at 0
device class 'usb': registering
device: 'lp0': device_add
usblp0: USB Bidirectional printer dev 40 if 0 alt 0 proto 2 vid 0x03F0 pid 0x4717
driver: '1-2:1.0': driver_bound: bound to device 'usblp'
bus: 'usb': really_probe: bound device 1-2:1.0 to driver usblp
drivers/usb/core/inode.c: creating file '040'
driver: '1-2': driver_bound: bound to device 'usb'
bus: 'usb': really_probe: bound device 1-2 to driver usb
device: 'usbdev1.40_ep00': device_add
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001802 POWER sig=j CSC
hub 1-0:1.0: port 2, status 0100, change 0001, 12 Mb/s
usb 1-2: USB disconnect, address 40
usb 1-2: unregistering device
usb 1-2: usb_disable_device nuking all URBs
usb 1-2: unregistering interface 1-2:1.0
device: 'usbdev1.40_ep01': device_unregister
device: 'usbdev1.40_ep81': device_unregister
bus: 'usb': remove device 1-2:1.0
drivers/usb/core/file.c: removing 0 minor
device: 'lp0': device_unregister
device: 'lp0': device_create_release
device class 'usb': unregistering
class 'usb': release.
class_create_release called for usb
usblp0: removed
usb 1-2:1.0: uevent
device: 'usbdev1.40_ep00': device_unregister
bus: 'usb': remove device 1-2
usb 1-2: uevent
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x501
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001005 POWER sig=se0 PE CONNECT
usb 1-2: new high speed USB device using ehci_hcd and address 41
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 1
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 2
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 3
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 4
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 5
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 6
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 7
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 8
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 9
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 10
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 11
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 12
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 13
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 14
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 15
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 16
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 17
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 18
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 19
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 20
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 21
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 22
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 23
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 24
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 25
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 26
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 27
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 28
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 29
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 30
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 31
ehci_hcd 0000:00:02.2: devpath 2 ep0in 3strikes
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 1
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 2
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 3
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 4
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 5
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 6
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 7
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 8
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 9
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 10
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 11
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 12
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 13
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 14
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 15
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 16
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 17
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 18
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 19
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 20
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 21
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 22
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 23
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 24
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 25
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 26
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 27
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 28
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 29
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 30
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 31
ehci_hcd 0000:00:02.2: devpath 2 ep0in 3strikes
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 1
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 2
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 3
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 4
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 5
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 6
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 7
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 8
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 9
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 10
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 11
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 12
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 13
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 14
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 15
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 16
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 17
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 18
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 19
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 20
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 21
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 22
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 23
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 24
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 25
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 26
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 27
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 28
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 29
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 30
ehci_hcd 0000:00:02.2: detected XactErr len 0/8 retry 31
ehci_hcd 0000:00:02.2: devpath 2 ep0in 3strikes
ehci_hcd 0000:00:02.2: port 2 high speed
ehci_hcd 0000:00:02.2: GetStatus port 2 status 001007 POWER sig=se0 PE CSC CONNECT
hub 1-0:1.0: unable to enumerate USB device on port 2
ohci_hcd 0000:00:02.0: auto-wakeup root hub
hub 1-0:1.0: state 7 ports 6 chg 0000 evt 0004
ehci_hcd 0000:00:02.2: GetStatus port 2 status 003802 POWER OWNER sig=j CSC
hub 1-0:1.0: port 2, status 0100, change 0001, 12 Mb/s
hub 1-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x100
hub 2-0:1.0: state 7 ports 3 chg 0000 evt 0004
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00010101 CSC PPS CCS
hub 2-0:1.0: port 2, status 0101, change 0001, 12 Mb/s
hub 2-0:1.0: debounce: port 2: total 100ms stable 100ms status 0x101
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00100103 PRSC PPS PES CCS
usb 2-2: new full speed USB device using ohci_hcd and address 10
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: device descriptor read/64, error -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: device descriptor read/64, error -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: new full speed USB device using ohci_hcd and address 11
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: device descriptor read/64, error -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0in 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: device descriptor read/64, error -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: new full speed USB device using ohci_hcd and address 12
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0out 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0out 5ec20000 cc 5 --> status -62
usb 2-2: device not accepting address 12, error -62
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00120103 PRSC PESC PPS PES CCS
usb 2-2: new full speed USB device using ohci_hcd and address 13
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0out 5ec20000 cc 5 --> status -62
ohci_hcd 0000:00:02.0: urb f61548f0 path 2 ep0out 5ec20000 cc 5 --> status -62
usb 2-2: device not accepting address 13, error -62
hub 2-0:1.0: unable to enumerate USB device on port 2
hub 2-0:1.0: state 7 ports 3 chg 0000 evt 0004
ohci_hcd 0000:00:02.0: GetStatus roothub.portstatus [1] = 0x00020101 PESC PPS CCS
hub 2-0:1.0: port 2 enable change, status 00000101
