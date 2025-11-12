include $(TOPDIR)/rules.mk

PKG_NAME:=python-hiredis
PKG_VERSION:=3.3.0
PKG_RELEASE:=1

PYPI_NAME:=hiredis
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-hiredis
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper for hiredis
  URL:=https://github.com/redis/hiredis-py
  DEPENDS:=+python3 +libhiredis
endef

define Package/python3-hiredis/description
Python extension that wraps protocol parsing code in hiredis. It primarily speeds up parsing of multi bulk replies.
endef

$(eval $(call Py3Package,python3-hiredis))
$(eval $(call BuildPackage,python3-hiredis))
$(eval $(call BuildPackage,python3-hiredis-src))
