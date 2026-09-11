include $(TOPDIR)/rules.mk

PKG_NAME:=python-pystemmer
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PYPI_NAME:=pystemmer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT BSD
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pystemmer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python stemming library using snowball stemmers
  URL:=https://github.com/snowballstem/pystemmer/
  DEPENDS:=+python3 +snowball
endef

define Package/python3-pystemmer/description
  PyStemmer is a Python interface to the stemming algorithms from the Snowball project (https://snowballstem.org/).
endef

PYTHON3_PKG_SETUP_VARS += PYSTEMMER_SYSTEM_LIBSTEMMER=1

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pystemmer))
$(eval $(call BuildPackage,python3-pystemmer))
$(eval $(call BuildPackage,python3-pystemmer-src))
