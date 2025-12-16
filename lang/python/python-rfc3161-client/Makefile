include $(TOPDIR)/rules.mk

PKG_NAME:=python-rfc3161-client
PKG_VERSION:=1.0.5
PKG_RELEASE:=1

PYPI_NAME:=rfc3161_client
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

define Package/python3-rfc3161-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An Opinionated Python RFC3161 Client
  URL:=https://trailofbits.github.io/rfc3161-client/
  DEPENDS:=+python3 +python3-cryptography $(RUST_ARCH_DEPENDS)
endef

define Package/python3-rfc3161-client/description
rfc3161-client is a Python library implementing the Time-Stamp Protocol (TSP) described in RFC 3161.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-rfc3161-client))
$(eval $(call BuildPackage,python3-rfc3161-client))
$(eval $(call BuildPackage,python3-rfc3161-client-src))
