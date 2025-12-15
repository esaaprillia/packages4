include $(TOPDIR)/rules.mk

PKG_NAME:=python-casttube
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=casttube
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-casttube
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=YouTube chromecast api
  URL:=http://github.com/ur1katz/casttube
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-casttube/description
casttube provides a way to interact with the Youtube Chromecast api.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-casttube))
$(eval $(call BuildPackage,python3-casttube))
$(eval $(call BuildPackage,python3-casttube-src))
