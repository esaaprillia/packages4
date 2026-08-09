include $(TOPDIR)/rules.mk

PKG_NAME:=python-uv-build
PKG_VERSION:=0.12.3
PKG_RELEASE:=1

PYPI_NAME:=uv_build
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uv-build
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=The uv build backend
  URL:=https://github.com/astral-sh/uv
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-uv-build/description
This package is a slimmed down version of uv containing only the build backend. See https://pypi.org/project/uv/ and https://docs.astral.sh/uv/ for the main project package and documentation.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uv-build))
$(eval $(call BuildPackage,python3-uv-build))
$(eval $(call BuildPackage,python3-uv-build-src))
