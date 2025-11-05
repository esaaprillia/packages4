include $(TOPDIR)/rules.mk

PKG_NAME:=python-connio
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=connio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-connio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Concurrency agnostic socket API
  URL:=https://tiagocoutinho.github.io/connio/
  DEPENDS:=+python3-light +python3-serialio +python3-sockio
endef

define Package/python3-connio/description
A python concurrency agnostic communication library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-connio))
$(eval $(call BuildPackage,python3-connio))
$(eval $(call BuildPackage,python3-connio-src))
