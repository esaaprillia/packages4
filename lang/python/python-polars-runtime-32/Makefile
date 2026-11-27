include $(TOPDIR)/rules.mk

PKG_NAME:=python-polars-runtime-32
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=polars_runtime_32
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host rustup/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package-rustup.mk
include ../python3-host-build-rustup.mk

define Package/python3-polars-runtime-32
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Blazingly fast DataFrame library
  URL:=https://github.com/pola-rs/polars
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-polars-runtime-32/description
Packages that contain the binary shared libraries that back the polars python package.
endef

PYTHON3_PKG_BUILD_VARS += CARGO=$(CARGO_HOME)/bin/cargo RUSTUP_AUTO_INSTALL=0

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-polars-runtime-32))
$(eval $(call BuildPackage,python3-polars-runtime-32))
$(eval $(call BuildPackage,python3-polars-runtime-32-src))
