include $(TOPDIR)/rules.mk

PKG_NAME:=python-retry2
PKG_VERSION:=0.9.5
PKG_RELEASE:=1

PYPI_NAME:=retry
PKG_SOURCE_URL:=https://github.com/eSAMTrade/retry/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pbr/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-retry2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=easy to use retry decorator in python
  URL:=https://github.com/eSAMTrade/retry
  DEPENDS:= \
	+python3-light \
	+python3-decorator
endef

define Package/python3-retry2/description
This is a fork of https://github.com/invl/retry which is not maintained anymore
endef

$(eval $(call Py3Package,python3-retry2))
$(eval $(call BuildPackage,python3-retry2))
$(eval $(call BuildPackage,python3-retry2-src))
