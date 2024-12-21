include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic-core
PKG_VERSION:=2.27.2
PKG_RELEASE:=1

PYPI_NAME:=pydantic_core
PKG_HASH:=eb026e5a4c1fee05726072337ff51d1efb6f59090b7da90d30ea58625b1ffb39

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-maturin/host python-typing-extensions/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pydantic-core
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Core functionality for Pydantic validation and serialization
  URL:=https://github.com/pydantic/pydantic-core
  DEPENDS:=+python3 +python3-typing-extensions $(RUST_ARCH_DEPENDS)
endef

define Package/python3-pydantic-core/description
This package provides the core functionality for pydantic validation and serialization.

Pydantic-core is currently around 17x faster than pydantic V1. See tests/benchmarks/ for details.
endef

$(eval $(call Py3Package,python3-pydantic-core))
$(eval $(call BuildPackage,python3-pydantic-core))
$(eval $(call BuildPackage,python3-pydantic-core-src))
