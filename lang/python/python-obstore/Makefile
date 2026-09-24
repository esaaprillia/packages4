include $(TOPDIR)/rules.mk

PKG_NAME:=python-obstore
PKG_VERSION:=0.11.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=obstore
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-obstore
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The simplest, highest-throughput Python interface to S3, GCS & Azure Storage, powered by Rust.
  URL:=https://developmentseed.org/obstore
  DEPENDS:= \
	+python3 \
	+python3-typing-extensions \
	$(RUST_ARCH_DEPENDS)
endef

define Package/python3-obstore/description
The simplest, highest-throughput Python interface to S3, GCS & Azure Storage, powered by Rust.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-obstore))
$(eval $(call BuildPackage,python3-obstore))
$(eval $(call BuildPackage,python3-obstore-src))
