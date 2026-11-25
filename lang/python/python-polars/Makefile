include $(TOPDIR)/rules.mk

PKG_NAME:=python-polars
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PYPI_NAME:=polars
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-polars
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Blazingly fast DataFrame library
  URL:=https://github.com/pola-rs/polars
  DEPENDS:=+python3 +python3-polars-runtime-32
endef

define Package/python3-polars/description
Polars is an analytical query engine for DataFrames, written in Rust.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-polars))
$(eval $(call BuildPackage,python3-polars))
$(eval $(call BuildPackage,python3-polars-src))
