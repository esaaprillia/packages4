include $(TOPDIR)/rules.mk

PKG_NAME:=python-lakers-python
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PYPI_NAME:=lakers_python
PKG_HASH:=eb0d6e32b75ade0a6d6478c2f1d21af6da130a3aefee667433c5dde2ac2e21f8

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-lakers-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=EDHOC implemented in Rust, optimized for microcontrollers, with bindings for C and Python.
  URL:=https://github.com/openwsn-berkeley/lakers
  DEPENDS:=+python3-light $(RUST_ARCH_DEPENDS)
endef

define Package/python3-lakers-python/description
Ephemeral Diffie-Hellman Over COSE (EDHOC) is a new IETF standard that provides a very lightweight authenticated key exchange, ideal for usage in constrained scenarios, such as in Internet of Things environments.
endef

$(eval $(call Py3Package,python3-lakers-python))
$(eval $(call BuildPackage,python3-lakers-python))
$(eval $(call BuildPackage,python3-lakers-python-src))
