include $(TOPDIR)/rules.mk

PKG_NAME:=python-dotmap
PKG_VERSION:=1.3.30
PKG_RELEASE:=1

PYPI_NAME:=dotmap
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dotmap
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=DotMap is a dot-access dict subclass that
  URL:=https://github.com/drgrib/dotmap
  DEPENDS:=+python3
endef

define Package/python3-dotmap/description
  Dot access dictionary with dynamic hierarchy creation and ordered iteration
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dotmap))
$(eval $(call BuildPackage,python3-dotmap))
$(eval $(call BuildPackage,python3-dotmap-src))
