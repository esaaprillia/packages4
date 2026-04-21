include $(TOPDIR)/rules.mk

PKG_NAME:=python-epson-projector
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=epson_projector
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-epson-projector
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Epson projector support for Python
  URL:=https://github.com/pszafer/epson_projector
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-pyserial-asyncio-fast
endef

define Package/python3-epson-projector/description
Asynchronous library to control Epson projectors
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-epson-projector))
$(eval $(call BuildPackage,python3-epson-projector))
$(eval $(call BuildPackage,python3-epson-projector-src))
