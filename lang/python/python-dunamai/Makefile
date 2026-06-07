include $(TOPDIR)/rules.mk

PKG_NAME:=python-dunamai
PKG_VERSION:=1.26.1
PKG_RELEASE:=1

PYPI_NAME:=dunamai
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-dunamai
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Dynamic version generation
  URL:=https://github.com/mtkennerly/dunamai
  DEPENDS:=+python3
endef

define Package/python3-dunamai/description
Dunamai is a Python 3.5+ library and command line tool for producing dynamic, standards-compliant version strings, derived from tags in your version control system.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-dunamai))
$(eval $(call BuildPackage,python3-dunamai))
$(eval $(call BuildPackage,python3-dunamai-src))
