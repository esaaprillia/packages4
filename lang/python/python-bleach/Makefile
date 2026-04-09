include $(TOPDIR)/rules.mk

PKG_NAME:=python-bleach
PKG_VERSION:=6.3.0
PKG_RELEASE:=1

PYPI_NAME:=bleach
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-webencodings/host +python-tinycss2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-bleach
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An easy safelist-based HTML-sanitizing tool.
  URL:=https://bleach.readthedocs.io
  DEPENDS:=+python3 +python3-webencodings +python3-tinycss2
endef

define Package/python3-bleach/description
  Bleach is an allowed-list-based HTML sanitizing library that escapes or strips markup and attributes.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-bleach))
$(eval $(call BuildPackage,python3-bleach))
$(eval $(call BuildPackage,python3-bleach-src))
