include $(TOPDIR)/rules.mk

PKG_NAME:=python-clarabel
PKG_VERSION:=0.11.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=clarabel
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-maturin/host
HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-clarabel
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Clarabel Conic Interior Point Solver for Rust / Python
  URL:=https://github.com/oxfordcontrol/Clarabel.rs
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy \
	+python3-cffi \
	$(RUST_ARCH_DEPENDS)
endef

define Package/python3-clarabel/description
Clarabel.rs is a Rust implementation of an interior point numerical solver for convex optimization problems using a novel homogeneous embedding.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-clarabel))
$(eval $(call BuildPackage,python3-clarabel))
$(eval $(call BuildPackage,python3-clarabel-src))
