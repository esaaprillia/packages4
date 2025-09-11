include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohappyeyeballs
PKG_VERSION:=2.6.1
PKG_RELEASE:=1

PYPI_NAME:=aiohappyeyeballs
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiohappyeyeballs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Happy Eyeballs for pre-resolved hosts
  URL:=https://github.com/aio-libs/aiohappyeyeballs
  DEPENDS:=+python3
endef

define Package/python3-aiohappyeyeballs/description
This library exists to allow connecting with Happy Eyeballs (RFC 8305) when you already have a list of addrinfo and not a DNS name.
The stdlib version of loop.create_connection() will only work when you pass in an unresolved name which is not a good fit when using DNS caching or resolving names via another method such as zeroconf.
endef

$(eval $(call Py3Package,python3-aiohappyeyeballs))
$(eval $(call BuildPackage,python3-aiohappyeyeballs))
$(eval $(call BuildPackage,python3-aiohappyeyeballs-src))
