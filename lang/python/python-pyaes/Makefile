include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyaes
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=pyaes
PKG_HASH:=02c1b1405c38d3c370b085fb952dd8bea3fadcee6411ad99f312cc129c536d8f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyaes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pure-Python Implementation of the AES block-cipher and common modes of operation
  URL:=https://github.com/ricmoo/pyaes
  DEPENDS:=+python3
endef

define Package/python3-pyaes/description
  A pure-Python implementation of the AES block cipher algorithm and the common modes of operation (CBC, CFB, CTR, ECB and OFB).
endef

$(eval $(call Py3Package,python3-pyaes))
$(eval $(call BuildPackage,python3-pyaes))
$(eval $(call BuildPackage,python3-pyaes-src))
$(eval $(call HostBuild))
