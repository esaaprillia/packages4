include $(TOPDIR)/rules.mk

PKG_NAME:=python-serialio
PKG_VERSION:=2.4.0
PKG_RELEASE:=1

PYPI_NAME:=serialio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3+
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-serialio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Concurrency agnostic serialio API
  URL:=https://tiagocoutinho.github.io/connio/
  DEPENDS:=+python3-light +python3-pyserial +python3-sockio
endef

define Package/python3-serialio/description
A python concurrency agnostic serial line library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-serialio))
$(eval $(call BuildPackage,python3-serialio))
$(eval $(call BuildPackage,python3-serialio-src))
