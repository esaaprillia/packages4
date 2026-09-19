include $(TOPDIR)/rules.mk

PKG_NAME:=python-davey
PKG_VERSION:=0.1.6
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=davey
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-maturin/host
HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-davey
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Discord DAVE implementation in Rust
  URL:=https://github.com/Snazzah/davey
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-davey/description
A Discord Audio & Video End-to-End Encryption (DAVE) Protocol Rust implementation using OpenMLS.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-davey))
$(eval $(call BuildPackage,python3-davey))
$(eval $(call BuildPackage,python3-davey-src))
