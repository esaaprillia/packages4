include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiovban
PKG_VERSION:=0.6.3
PKG_RELEASE:=1

PYPI_NAME:=aiovban
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiovban
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An asyncio VBAN implementation
  URL:=https://github.com/wmbest2/aiovban
  DEPENDS:= \
	+python3-light
endef

define Package/python3-aiovban/description
This project aims to create a modern, ergonomic wrapper around the VBAN protocol.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiovban))
$(eval $(call BuildPackage,python3-aiovban))
$(eval $(call BuildPackage,python3-aiovban-src))
