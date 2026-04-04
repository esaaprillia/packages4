include $(TOPDIR)/rules.mk

PKG_NAME:=python-progress
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

PYPI_NAME:=progress
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-progress
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Easy to use progress bars
  URL:=https://github.com/verigak/progress/
  DEPENDS:= \
	+python3
endef

define Package/python3-progress/description
Easy progress reporting for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-progress))
$(eval $(call BuildPackage,python3-progress))
$(eval $(call BuildPackage,python3-progress-src))
