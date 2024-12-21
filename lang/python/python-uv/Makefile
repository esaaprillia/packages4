include $(TOPDIR)/rules.mk

PKG_NAME:=python-uv
PKG_VERSION:=0.5.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

PYPI_NAME:=uv
PKG_HASH:=cd7a5a3a36f975a7678f27849a2d49bafe7272143d938e9b6f3bf28392a3ba00

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-maturin/host

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
