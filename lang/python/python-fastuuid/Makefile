include $(TOPDIR)/rules.mk

PKG_NAME:=python-fastuuid
PKG_VERSION:=0.14.0
PKG_RELEASE:=1

PYPI_NAME:=fastuuid
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fastuuid
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings to Rust's UUID library.
  URL:=https://github.com/thedrow/fastuuid/
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-fastuuid/description
The provided API is exactly as Python's builtin UUID class. The supported UUID versions are v1, v3, v4, v5, and v7.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fastuuid))
$(eval $(call BuildPackage,python3-fastuuid))
$(eval $(call BuildPackage,python3-fastuuid-src))
