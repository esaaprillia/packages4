include $(TOPDIR)/rules.mk

PKG_NAME:=python-multipart
PKG_VERSION:=0.0.32
PKG_RELEASE:=1

PYPI_NAME:=python_multipart
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-multipart
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A streaming multipart parser for Python
  URL:=https://kludex.github.io/python-multipart/
  DEPENDS:=+python3
endef

define Package/python3-multipart/description
python-multipart is an Apache2-licensed streaming multipart parser for Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-multipart))
$(eval $(call BuildPackage,python3-multipart))
$(eval $(call BuildPackage,python3-multipart-src))
