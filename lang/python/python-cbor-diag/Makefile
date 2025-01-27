include $(TOPDIR)/rules.mk

PKG_NAME:=python-cbor-diag
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=cbor_diag
PKG_HASH:=78a85ab1165c43d224dc6b93e1ee791aec2f392c55d219d11937f78974f4e6c3

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cbor-diag
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Conversion between CBOR and CBOR Diagnostic Notation
  URL:=https://github.com/chrysn/cbor-diag-py
  DEPENDS:=+python3-light $(RUST_ARCH_DEPENDS)
endef

define Package/python3-cbor-diag/description
This Python module is a minimal wapper around the cbor-edn crate (formally around the cbor-diag crate). Unlike those crates, which offers lots of functionality for manipulating CBOR and its diagnostic notation, this module only exposes two very simple functions:
• diag2cbor, which parses diagnostic notation and produces a corresponding CBOR binary string, and
• cbor2diag, which does the inverse.
It is recommended to use the cbor2 package to actually process the CBOR data.
endef

$(eval $(call Py3Package,python3-cbor-diag))
$(eval $(call BuildPackage,python3-cbor-diag))
$(eval $(call BuildPackage,python3-cbor-diag-src))
