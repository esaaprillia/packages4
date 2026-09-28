include $(TOPDIR)/rules.mk

PKG_NAME:=python-fetch-use
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=fetch_use
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fetch-use
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for Browser-Use Fetch HTTP service
  URL:=https://docs.browser-use.com/
  DEPENDS:= \
	+python3
endef

define Package/python3-fetch-use/description
Python client for the Browser-Use Fetch HTTP service.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fetch-use))
$(eval $(call BuildPackage,python3-fetch-use))
$(eval $(call BuildPackage,python3-fetch-use-src))
