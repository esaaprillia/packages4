include $(TOPDIR)/rules.mk

PKG_NAME:=python-binaryornot
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=binaryornot
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-binaryornot
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Ultra-lightweight pure Python package to check if a file is binary or text.
  URL:=https://github.com/binaryornot/binaryornot
  DEPENDS:= \
	+python3
endef

define Package/python3-binaryornot/description
Python library and CLI tool to check if a file is binary or text. Zero dependencies.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-binaryornot))
$(eval $(call BuildPackage,python3-binaryornot))
$(eval $(call BuildPackage,python3-binaryornot-src))
