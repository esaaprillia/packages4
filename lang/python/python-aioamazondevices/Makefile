include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioamazondevices
PKG_VERSION:=13.3.2
PKG_RELEASE:=1

PYPI_NAME:=aioamazondevices
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aioamazondevices
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library to control Amazon devices
  URL:=https://github.com/chemelli74/aioamazondevices
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-beautifulsoup4 \
	+python3-colorlog \
	+python3-langcodes \
	+python3-orjson \
	+python3-dateutil
endef

define Package/python3-aioamazondevices/description
Python library to control Amazon devices
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aioamazondevices))
$(eval $(call BuildPackage,python3-aioamazondevices))
$(eval $(call BuildPackage,python3-aioamazondevices-src))
