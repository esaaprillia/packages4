include $(TOPDIR)/rules.mk

PKG_NAME:=python-nest-asyncio
PKG_VERSION:=1.6.0
PKG_RELEASE:=1

PYPI_NAME:=nest_asyncio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:= BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nest-asyncio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Patch asyncio to allow nested event loops
  URL:=https://github.com/erdewit/nest_asyncio
  DEPENDS:=+python3
endef

define Package/python3-nest-asyncio/description
  By design asyncio does not allow its event loop to be nested. This presents a practical problem: When in an environment where the event loop is already running it's impossible to run tasks and wait for the result. Trying to do so will give the error "RuntimeError: This event loop is already running".
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nest-asyncio))
$(eval $(call BuildPackage,python3-nest-asyncio))
$(eval $(call BuildPackage,python3-nest-asyncio-src))
