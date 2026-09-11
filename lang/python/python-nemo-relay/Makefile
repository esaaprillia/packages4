include $(TOPDIR)/rules.mk

PKG_NAME:=python-nemo-relay
PKG_VERSION:=0.8.4
PKG_RELEASE:=1

PYPI_NAME:=nemo_relay
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nemo-relay
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for the NeMo Relay agent runtime.
  URL:=https://github.com/NVIDIA/NeMo-Relay
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-nemo-relay/description
  nemo-relay is the NeMo Relay package for Python applications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nemo-relay))
$(eval $(call BuildPackage,python3-nemo-relay))
$(eval $(call BuildPackage,python3-nemo-relay-src))
