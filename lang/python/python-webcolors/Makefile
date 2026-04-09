include $(TOPDIR)/rules.mk

PKG_NAME:=python-webcolors
PKG_VERSION:=25.10.0
PKG_RELEASE:=1

PYPI_NAME:=webcolors
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pdm-backend/host
HOST_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-webcolors
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library for working with the color formats defined by HTML and CSS.
  URL:=https://github.com/ubernostrum/webcolors
  DEPENDS:= \
	+python3-light
endef

define Package/python3-webcolors/description
webcolors is a module for working with and converting between the various HTML/CSS color formats.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-webcolors))
$(eval $(call BuildPackage,python3-webcolors))
$(eval $(call BuildPackage,python3-webcolors-src))
