include $(TOPDIR)/rules.mk

PKG_NAME:=python-truststore
PKG_VERSION:=0.10.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=truststore
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-truststore
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Verify certificates using OS trust stores
  URL:=https://truststore.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-urllib3
endef

define Package/python3-truststore/description
Truststore is a library which exposes native system certificate stores (ie "trust stores") through an ssl.SSLContext-like API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-truststore))
$(eval $(call BuildPackage,python3-truststore))
$(eval $(call BuildPackage,python3-truststore-src))
