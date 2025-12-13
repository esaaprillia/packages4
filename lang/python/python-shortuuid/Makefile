include $(TOPDIR)/rules.mk

PKG_NAME:=python-shortuuid
PKG_VERSION:=1.0.13
PKG_RELEASE:=1

PYPI_NAME:=shortuuid
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-shortuuid
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A generator library for concise, unambiguous and URL-safe UUIDs.
  URL:=https://github.com/skorokithakis/shortuuid/
  DEPENDS:=+python3
endef

define Package/python3-shortuuid/description
shortuuid is a simple python library that generates concise, unambiguous, URL-safe UUIDs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-shortuuid))
$(eval $(call BuildPackage,python3-shortuuid))
$(eval $(call BuildPackage,python3-shortuuid-src))
