include $(TOPDIR)/rules.mk

PKG_NAME:=python-motioneye-client
PKG_VERSION:=0.3.14
PKG_RELEASE:=1

PYPI_NAME:=motioneye-client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-motioneye-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=motionEye client library Python Package
  URL:=https://github.com/dermotduffy/motioneye-client
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-aiosignal \
	+python3-async-timeout \
	+python3-attrs \
	+python3-charset-normalizer \
	+python3-frozenlist \
	+python3-idna \
	+python3-multidict \
	+python3-yarl
endef

define Package/python3-motioneye-client/description
A simple async API client for motionEye.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-motioneye-client))
$(eval $(call BuildPackage,python3-motioneye-client))
$(eval $(call BuildPackage,python3-motioneye-client-src))
