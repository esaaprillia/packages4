include $(TOPDIR)/rules.mk

PKG_NAME:=python-redis
PKG_VERSION:=8.0.0
PKG_RELEASE:=1

PYPI_NAME:=redis
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-redis
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Redis Python client
  URL:=https://github.com/redis/redis-py
  DEPENDS:=+python3
endef

define Package/python3-redis/description
Python client for Redis database and key-value store
endef

$(eval $(call Py3Package,python3-redis))
$(eval $(call BuildPackage,python3-redis))
$(eval $(call BuildPackage,python3-redis-src))
