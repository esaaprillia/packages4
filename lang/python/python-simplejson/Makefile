include $(TOPDIR)/rules.mk

PKG_NAME:=python-simplejson
PKG_VERSION:=4.1.1
PKG_RELEASE:=1

PYPI_NAME:=simplejson
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-simplejson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple, fast, extensible JSON encoder/decoder for Python
  URL:=https://simplejson.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-simplejson/description
  simplejson is a simple, fast, complete, correct and extensible JSON <http://json.org> encoder and decoder for Python 3.3+ with legacy support for Python 2.5+. It is pure Python code with no dependencies, but includes an optional C extension for a serious speed boost.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-simplejson))
$(eval $(call BuildPackage,python3-simplejson))
$(eval $(call BuildPackage,python3-simplejson-src))
