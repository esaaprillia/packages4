include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyserial-asyncio-fast
PKG_VERSION:=0.14
PKG_RELEASE:=1

PYPI_NAME:=pyserial-asyncio-fast
PKG_HASH:=09ad7f2886969da3df064e93fd47ceab47ad91144ec80e103c5cf97bb0038908

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyserial-asyncio-fast
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Serial Port Extension - Asynchronous I/O support
  URL:=https://github.com/home-assistant-libs/pyserial-asyncio-fast
  DEPENDS:=+python3-asyncio +python3-pyserial +python3-urllib
endef

define Package/python3-pyserial-asyncio-fast/description
  fast asyncio extension package for pyserial that implements eager writes.
endef

$(eval $(call Py3Package,python3-pyserial-asyncio-fast))
$(eval $(call BuildPackage,python3-pyserial-asyncio-fast))
$(eval $(call BuildPackage,python3-pyserial-asyncio-fast-src))
