include $(TOPDIR)/rules.mk

PKG_NAME:=python-iaqualink
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=iaqualink
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-iaqualink
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous library for Jandy iAqualink
  URL:=https://github.com/flz/iaqualink-py
  DEPENDS:= \
	+python3 \
	+python3-httpx \
	+python3-h2
endef

define Package/python3-iaqualink/description
Asynchronous library for Jandy iAqualink
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-iaqualink))
$(eval $(call BuildPackage,python3-iaqualink))
$(eval $(call BuildPackage,python3-iaqualink-src))
