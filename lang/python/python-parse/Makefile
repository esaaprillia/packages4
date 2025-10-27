include $(TOPDIR)/rules.mk

PKG_NAME:=python-parse
PKG_VERSION:=1.20.2
PKG_RELEASE:=1

PYPI_NAME:=parse
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-parse
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=parse() is the opposite of format()
  URL:=https://github.com/r1chardj0n3s/parse
  DEPENDS:=+python3
endef

define Package/python3-parse/description
Parse strings using a specification based on the Python format() syntax.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-parse))
$(eval $(call BuildPackage,python3-parse))
$(eval $(call BuildPackage,python3-parse-src))
