include $(TOPDIR)/rules.mk

PKG_NAME:=python-dnspython
PKG_VERSION:=2.7.0
PKG_RELEASE:=1

PYPI_NAME:=dnspython
PKG_HASH:=ce9c432eda0dc91cf618a5cedf1a4e142651196bbcd2c80e89ed5a907e5cfaf1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dnspython
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=powerful DNS toolkit for python
  URL:=http://www.dnspython.org/
  DEPENDS:=+python3 +python3-cryptography +python3-curio +python3-idna +python3-requests-toolbelt +python3-sniffio +python3-trio
endef

define Package/python3-dnspython/description
dnspython is a DNS toolkit for Python. It supports almost all record types. It can be used for queries, zone transfers, and dynamic updates. It supports TSIG-authenticated messages and EDNS0.
dnspython provides both high- and low-level access to DNS. The high-level classes perform queries for data of a given name, type, and class, and return an answer set. The low-level classes allow direct manipulation of DNS zones, messages, names, and records.
To see a few of the ways dnspython can be used, look in the examples/ directory.
dnspython is a utility to work with DNS, /etc/hosts is thus not used. For simple forward DNS lookups, it's better to use socket.getaddrinfo() or socket.gethostbyname().
dnspython originated at Nominum where it was developed to facilitate the testing of DNS software.
endef

$(eval $(call Py3Package,python3-dnspython))
$(eval $(call BuildPackage,python3-dnspython))
$(eval $(call BuildPackage,python3-dnspython-src))
