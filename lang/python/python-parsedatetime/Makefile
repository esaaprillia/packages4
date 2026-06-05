include $(TOPDIR)/rules.mk

PKG_NAME:=python-parsedatetime
PKG_VERSION:=2.6
PKG_RELEASE:=1

PYPI_NAME:=parsedatetime
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-parsedatetime
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parse human-readable date/time text.
  URL:=https://github.com/bear/parsedatetime
  DEPENDS:= \
	+python3-light
endef

define Package/python3-parsedatetime/description
Parse human-readable date/time strings.
endef

$(eval $(call Py3Package,python3-parsedatetime))
$(eval $(call BuildPackage,python3-parsedatetime))
$(eval $(call BuildPackage,python3-parsedatetime-src))
