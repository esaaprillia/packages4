include $(TOPDIR)/rules.mk

PKG_NAME:=python-enum-compat
PKG_VERSION:=0.0.3
PKG_RELEASE:=1

PYPI_NAME:=enum-compat
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-enum-compat
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=enum/enum34 compatibility package
  URL:=https://github.com/jstasiak/enum-compat
  DEPENDS:=+python3
endef

define Package/python3-enum-compat/description
  enum/enum34 compatibility package
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-enum-compat))
$(eval $(call BuildPackage,python3-enum-compat))
$(eval $(call BuildPackage,python3-enum-compat-src))
