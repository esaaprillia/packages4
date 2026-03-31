include $(TOPDIR)/rules.mk

PKG_NAME:=python-smart-open
PKG_VERSION:=7.5.1
PKG_RELEASE:=1

PYPI_NAME:=smart_open
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-smart-open
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Utils for streaming large files
  URL:=https://github.com/piskvorky/smart_open
  DEPENDS:= \
	+python3-light \
	+python3-wrapt
endef

define Package/python3-smart-open/description
smart_open is a Python 3 library for efficient streaming of very large files
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-smart-open))
$(eval $(call BuildPackage,python3-smart-open))
$(eval $(call BuildPackage,python3-smart-open-src))
