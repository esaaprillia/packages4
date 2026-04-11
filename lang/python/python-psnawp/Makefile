include $(TOPDIR)/rules.mk

PKG_NAME:=python-psnawp
PKG_VERSION:=3.0.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=psnawp
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-psnawp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API Wrapper for PlayStation Network API.
  URL:=https://github.com/isFakeAccount/psnawp
  DEPENDS:= \
	+python3-light \
	+python3-pycountry \
	+python3-pyrate-limiter \
	+python3-requests \
	+python3-typing-extensions
endef

define Package/python3-psnawp/description
Retrieve User Information, Trophies, Game and Store data from the PlayStation Network.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-psnawp))
$(eval $(call BuildPackage,python3-psnawp))
$(eval $(call BuildPackage,python3-psnawp-src))
