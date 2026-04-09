include $(TOPDIR)/rules.mk

PKG_NAME:=python-tinycss2
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=tinycss2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tinycss2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A tiny CSS parser
  URL:=https://www.courtbouillon.org/tinycss2
  DEPENDS:=+python3 +python3-webencodings
endef

define Package/python3-tinycss2/description
  tinycss2 is a low-level CSS parser and generator written in Python: it can parse strings, return objects representing tokens and blocks, and generate CSS strings corresponding to these objects.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tinycss2))
$(eval $(call BuildPackage,python3-tinycss2))
$(eval $(call BuildPackage,python3-tinycss2-src))
