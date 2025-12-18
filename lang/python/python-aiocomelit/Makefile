include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiocomelit
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PYPI_NAME:=aiocomelit
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiocomelit
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library to control Comelit Simplehome
  URL:=https://github.com/chemelli74/aiocomelit
  DEPENDS:=+python3 +python3-aiohttp +python3-colorlog +python3-pint
endef

define Package/python3-aiocomelit/description
Python library to control Comelit Simplehome
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiocomelit))
$(eval $(call BuildPackage,python3-aiocomelit))
$(eval $(call BuildPackage,python3-aiocomelit-src))
