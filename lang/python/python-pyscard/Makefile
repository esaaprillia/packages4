include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyscard
PKG_VERSION:=2.3.1
PKG_RELEASE:=1

PYPI_NAME:=pyscard
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=swig/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyscard
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Smartcard module for Python.
  URL:=http://pyscard.sourceforge.net/
  DEPENDS:=+python3 +libpcsclite
endef

define Package/python3-pyscard/description
pyscard - python smart card library - is a python module adding smart cards support to python.
endef

$(eval $(call Py3Package,python3-pyscard))
$(eval $(call BuildPackage,python3-pyscard))
$(eval $(call BuildPackage,python3-pyscard-src))
