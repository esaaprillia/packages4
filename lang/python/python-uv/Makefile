include $(TOPDIR)/rules.mk

PKG_NAME:=python-uv
PKG_VERSION:=0.5.24
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

PYPI_NAME:=uv
PKG_HASH:=b7895b66a182bf5e5b88e470ab04beaf76361a64970db6058363293a18c9dd2a

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-uv
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An extremely fast Python package and project manager, written in Rust.
  URL:=https://docs.astral.sh/uv
  DEPENDS:=+python3 +libbz2 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-uv/description
An extremely fast Python package and project manager, written in Rust.
endef

$(eval $(call Py3Package,python3-uv))
$(eval $(call BuildPackage,python3-uv))
$(eval $(call BuildPackage,python3-uv-src))
