include $(TOPDIR)/rules.mk

PKG_NAME:=python-psycogreen
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PYPI_NAME:=psycogreen
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-psycogreen
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=psycopg2 integration with coroutine libraries
  URL:=https://github.com/psycopg/psycogreen/
  DEPENDS:=+python3
endef

define Package/python3-psycogreen/description
The psycogreen package enables psycopg2 to work with coroutine libraries, using asynchronous calls internally but offering a blocking interface so that regular code can run unmodified.
endef

$(eval $(call Py3Package,python3-psycogreen))
$(eval $(call BuildPackage,python3-psycogreen))
$(eval $(call BuildPackage,python3-psycogreen-src))
