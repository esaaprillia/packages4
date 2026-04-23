include $(TOPDIR)/rules.mk

PKG_NAME:=python-loguru
PKG_VERSION:=0.7.3
PKG_RELEASE:=1

PYPI_NAME:=loguru
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-loguru
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python logging made (stupidly) simple
  URL:=https://github.com/Delgan/loguru
  DEPENDS:= \
	+python3-light
endef

define Package/python3-loguru/description
  Loguru is a library which aims to bring enjoyable logging in Python.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-loguru))
$(eval $(call BuildPackage,python3-loguru))
$(eval $(call BuildPackage,python3-loguru-src))
