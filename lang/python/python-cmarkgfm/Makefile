include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmarkgfm
PKG_VERSION:=2025.10.22
PKG_RELEASE:=1

PYPI_NAME:=cmarkgfm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host python-pycparser/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmarkgfm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Minimal bindings to GitHub's fork of cmark
  URL:=https://github.com/theacodes/cmarkgfm
  DEPENDS:=+python3 +python3-cffi
endef

define Package/python3-cmarkgfm/description
Minimalist Python bindings to GitHub’s fork of cmark.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmarkgfm))
$(eval $(call BuildPackage,python3-cmarkgfm))
$(eval $(call BuildPackage,python3-cmarkgfm-src))
