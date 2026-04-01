include $(TOPDIR)/rules.mk

PKG_NAME:=python-preprocess-cancellation
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=preprocess_cancellation
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-preprocess-cancellation
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=GCode processor to add klipper cancel-object markers
  URL:=https://github.com/kageurufu/cancelobject-preprocessor
  DEPENDS:= \
	+python3-light \
	+python3-shapely
endef

define Package/python3-preprocess-cancellation/description
Klipper GCode Preprocessor for Object Cancellation
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-preprocess-cancellation))
$(eval $(call BuildPackage,python3-preprocess-cancellation))
$(eval $(call BuildPackage,python3-preprocess-cancellation-src))
