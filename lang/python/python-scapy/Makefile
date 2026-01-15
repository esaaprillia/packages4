include $(TOPDIR)/rules.mk

PKG_NAME:=python-scapy
PKG_VERSION:=2.7.0
PKG_RELEASE:=1

PYPI_NAME:=scapy
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-scapy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Scapy: interactive packet manipulation tool
  URL:=https://scapy.net/
  DEPENDS:= \
    +python3 \
    +tcpdump
endef

define Package/python3-scapy/description
Scapy is a powerful Python-based interactive packet manipulation program and library.
It is able to forge or decode packets of a wide number of protocols, send them on the wire, capture them, store or read them using pcap files, match requests and replies, and much more. It is designed to allow fast packet prototyping by using default values that work.
It can easily handle most classical tasks like scanning, tracerouting, probing, unit tests, attacks or network discovery (it can replace hping, 85% of nmap, arpspoof, arp-sk, arping, tcpdump, wireshark, p0f, etc.). It also performs very well at a lot of other specific tasks that most other tools can't handle, like sending invalid frames, injecting your own 802.11 frames, combining techniques (VLAN hopping+ARP cache poisoning, VoIP decoding on WEP protected channel, ...), etc.
Scapy supports Python 3.7+. It's intended to be cross platform, and runs on many different platforms (Linux, OSX, *BSD, and Windows).
endef

$(eval $(call Py3Package,python3-scapy))
$(eval $(call BuildPackage,python3-scapy))
$(eval $(call BuildPackage,python3-scapy-src))
