include $(TOPDIR)/rules.mk

PKG_NAME:=python-snowballstemmer
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=snowballstemmer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-snowballstemmer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Snowball stemming library collection for Python
  URL:=https://github.com/snowballstem/snowball
  DEPENDS:=+python3 python3-pystemmer
endef

define Package/python3-snowballstemmer/description
  Snowball stemming library collection for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-snowballstemmer))
$(eval $(call BuildPackage,python3-snowballstemmer))
$(eval $(call BuildPackage,python3-snowballstemmer-src))
