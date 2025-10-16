include $(TOPDIR)/rules.mk

PKG_NAME:=python-pypubsub
PKG_VERSION:=4.0.3
PKG_RELEASE:=1

PYPI_NAME:=pypubsub
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pypubsub
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Publish-Subscribe Package
  URL:=http://pypubsub.readthedocs.io
  DEPENDS:=+python3
endef

define Package/python3-pypubsub/description
  Provides a publish-subscribe API to facilitate event-based or message-based architecture in a single-process application. It is pure Python and works on Python 3.3+.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pypubsub))
$(eval $(call BuildPackage,python3-pypubsub))
$(eval $(call BuildPackage,python3-pypubsub-src))
