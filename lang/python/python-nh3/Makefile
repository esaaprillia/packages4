include $(TOPDIR)/rules.mk

PKG_NAME:=python-nh3
PKG_VERSION:=0.3.4
PKG_RELEASE:=1

PYPI_NAME:=nh3
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host
HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nh3
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python binding to Ammonia HTML sanitizer Rust crate
  URL:=https://nh3.readthedocs.io/
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-nh3/description
A quick benchmark showing that nh3 is about 20 times faster than the deprecated bleach package. Measured on a MacBook Air (M2, 2022).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nh3))
$(eval $(call BuildPackage,python3-nh3))
$(eval $(call BuildPackage,python3-nh3-src))
