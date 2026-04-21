include $(TOPDIR)/rules.mk

PKG_NAME:=python-zope-dottedname
PKG_VERSION:=7.1
PKG_RELEASE:=1

PYPI_NAME:=zope_dottedname
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ZPL-2.1
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-zope-dottedname
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Resolver for Python dotted names.
  URL:=https://github.com/zopefoundation/zope.dottedname
  DEPENDS:= \
	+python3
endef

define Package/python3-zope-dottedname/description
Resolve strings containing dotted names into the appropriate Python object.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-zope-dottedname))
$(eval $(call BuildPackage,python3-zope-dottedname))
$(eval $(call BuildPackage,python3-zope-dottedname-src))
