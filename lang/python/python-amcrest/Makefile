include $(TOPDIR)/rules.mk

PKG_NAME:=python-amcrest
PKG_VERSION:=1.9.9
PKG_RELEASE:=1

PYPI_NAME:=amcrest
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-amcrest
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper implementation for Amcrest cameras.
  URL:=http://python-amcrest.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-argcomplete \
	+python3-httpx \
	+python3-requests \
	+python3-typing-extensions \
	+python3-urllib3
endef

define Package/python3-amcrest/description
Amcrest and Dahua devices share similar firmwares. Dahua Cameras and NVRs also work with this module.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-amcrest))
$(eval $(call BuildPackage,python3-amcrest))
$(eval $(call BuildPackage,python3-amcrest-src))
