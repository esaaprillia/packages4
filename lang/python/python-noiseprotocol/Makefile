include $(TOPDIR)/rules.mk

PKG_NAME:=python-noiseprotocol
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=noiseprotocol
PKG_HASH:=b092a871b60f6a8f07f17950dc9f7098c8fe7d715b049bd4c24ee3752b90d645

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-pypandoc/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-noiseprotocol
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Noise Protocol Framework - Python 3 implementation
  URL:=https://github.com/plizonczyk/noiseprotocol
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-noiseprotocol/description
  This repository contains source code of noiseprotocol - a Python 3 implementation of Noise Protocol Framework. Compatible with revisions 32 and 33.
endef

$(eval $(call Py3Package,python3-noiseprotocol))
$(eval $(call BuildPackage,python3-noiseprotocol))
$(eval $(call BuildPackage,python3-noiseprotocol-src))
