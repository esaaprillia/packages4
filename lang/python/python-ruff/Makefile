include $(TOPDIR)/rules.mk

PKG_NAME:=python-ruff
PKG_VERSION:=0.15.20
PKG_RELEASE:=1

PYPI_NAME:=ruff
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ruff
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An extremely fast Python linter and code formatter, written in Rust.
  URL:=https://docs.astral.sh/ruff/
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-ruff/description
Ruff aims to be orders of magnitude faster than alternative tools while integrating more functionality behind a single, common interface.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ruff))
$(eval $(call BuildPackage,python3-ruff))
$(eval $(call BuildPackage,python3-ruff-src))
