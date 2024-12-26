include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysnmplib
PKG_VERSION:=5.0.24
PKG_RELEASE:=1

PYPI_NAME:=pysnmplib
PKG_HASH:=c689ba2d4f24b79ab151d2eca5e2d5f359e61b271cbcd74c460a2853dcaeff88

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pysnmplib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=SNMP library for Python
  URL:=https://github.com/pysnmp/pysnmp
  DEPENDS:= \
	+python3-asyncio \
	+python3-ctypes \
	+python3-logging \
	+python3-cryptodomex \
	+python3-pysnmp-pyasn1 \
	+python3-pysnmp-pysmi
endef

define Package/python3-pysnmplib/description
  This is a pure-Python, open source and free implementation of
  v1/v2c/v3 SNMP engine distributed under 2-clause BSD license.
endef

$(eval $(call Py3Package,python3-pysnmplib))
$(eval $(call BuildPackage,python3-pysnmplib))
$(eval $(call BuildPackage,python3-pysnmplib-src))
