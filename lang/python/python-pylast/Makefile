include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylast
PKG_VERSION:=7.0.0
PKG_RELEASE:=1

PYPI_NAME:=pylast
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pylast
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python interface to Last.fm and Libre.fm
  URL:=https://github.com/pylast/pylast
  DEPENDS:=+python3 +python3-httpx
endef

define Package/python3-pylast/description
A Python interface to Last.fm and other API-compatible websites such as Libre.fm.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pylast))
$(eval $(call BuildPackage,python3-pylast))
$(eval $(call BuildPackage,python3-pylast-src))
