include $(TOPDIR)/rules.mk

PKG_NAME:=python-tinytag
PKG_VERSION:=2.1.2
PKG_RELEASE:=1

PYPI_NAME:=tinytag
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tinytag
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read audio file metadata
  URL:=https://github.com/tinytag/tinytag
  DEPENDS:=+python3
endef

define Package/python3-tinytag/description
tinytag is a Python library for reading audio file metadata
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tinytag))
$(eval $(call BuildPackage,python3-tinytag))
$(eval $(call BuildPackage,python3-tinytag-src))
