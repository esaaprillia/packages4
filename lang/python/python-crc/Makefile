include $(TOPDIR)/rules.mk

PKG_NAME:=python-crc
PKG_VERSION:=7.1.0
PKG_RELEASE:=1

PYPI_NAME:=crc
PKG_HASH:=99dd540909a37ae4f62c65441df8ecb4e7f9af014fecaf4f331052a41d66c07d

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-crc
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pure Python CRC library
  URL:=https://nicoretti.github.io/crc
  DEPENDS:=+python3-light
endef

define Package/python3-crc/description
  Calculate CRC checksums, verify CRC checksum, predefined CRC configurations, custom CRC configurations
endef

$(eval $(call Py3Package,python3-crc))
$(eval $(call BuildPackage,python3-crc))
$(eval $(call BuildPackage,python3-crc-src))
