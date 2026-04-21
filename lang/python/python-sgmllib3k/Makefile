include $(TOPDIR)/rules.mk

PKG_NAME:=python-sgmllib3k
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=sgmllib3k
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sgmllib3k
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Py3k port of sgmllib.
  URL:=http://hg.hardcoded.net/sgmllib
  DEPENDS:= \
	+python3
endef

define Package/python3-sgmllib3k/description
sgmllib was dropped in Python 3. For those depending on it, that’s somewhat unfortunate.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sgmllib3k))
$(eval $(call BuildPackage,python3-sgmllib3k))
$(eval $(call BuildPackage,python3-sgmllib3k-src))
