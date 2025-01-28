include $(TOPDIR)/rules.mk

PKG_NAME:=python-zigpy-znp
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PYPI_NAME:=zigpy_znp
PKG_HASH:=31f20feec96df32a0cb7cdd64f3864f1ac72fc6363087caa7ef52fa61ab7fee1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zigpy-znp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A library for zigpy which communicates with TI ZNP radios
  URL:=https://github.com/zigpy/zigpy-znp
  DEPENDS:= \
	+python3-asyncio \
	+python3-logging \
	+python3-async-timeout \
	+python3-coloredlogs \
	+python3-jsonschema \
	+python3-voluptuous \
	+python3-zigpy
endef

define Package/python3-zigpy-znp/description
  zigpy-znp is a Python library that adds support for common
  Texas Instruments ZNP (Zigbee Network Processors) Zigbee
  radio modules to zigpy, a Python Zigbee stack project.
endef

$(eval $(call Py3Package,python3-zigpy-znp))
$(eval $(call BuildPackage,python3-zigpy-znp))
$(eval $(call BuildPackage,python3-zigpy-znp-src))
