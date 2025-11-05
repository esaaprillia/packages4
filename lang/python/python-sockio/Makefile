include $(TOPDIR)/rules.mk

PKG_NAME:=python-sockio
PKG_VERSION:=0.15.0
PKG_RELEASE:=1

PYPI_NAME:=sockio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPLv3+
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sockio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Concurrency agnostic socket API
  URL:=https://tiagocoutinho.github.io/sockio/
  DEPENDS:=+python3-light
endef

define Package/python3-sockio/description
A python concurrency agnostic socket library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sockio))
$(eval $(call BuildPackage,python3-sockio))
$(eval $(call BuildPackage,python3-sockio-src))
