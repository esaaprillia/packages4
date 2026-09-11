include $(TOPDIR)/rules.mk

PKG_NAME:=python-watchfiles
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=watchfiles
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

define Package/python3-watchfiles
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple, modern and fast file watching and code reload for Python, written in Rust
  URL:=https://github.com/samuelcolvin/watchfiles
  DEPENDS:=+python3 +python3-anyio $(RUST_ARCH_DEPENDS)
endef

define Package/python3-watchfiles/description
  Simple, modern and fast file watching and code reload for Python, written in Rust
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-watchfiles))
$(eval $(call BuildPackage,python3-watchfiles))
$(eval $(call BuildPackage,python3-watchfiles-src))
