include $(TOPDIR)/rules.mk

PKG_NAME:=python-ultralytics-thop
PKG_VERSION:=2.2.5
PKG_RELEASE:=1

PYPI_NAME:=ultralytics_thop
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ultralytics-thop
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ultralytics THOP package for fast computation of PyTorch model FLOPs and parameters.
  URL:=https://github.com/ultralytics/thop
  DEPENDS:=+python3 +python3-numpy +python3-torch
endef

define Package/python3-ultralytics-thop/description
THOP measures a model with one forward pass, making it useful for comparing architecture complexity before training or deployment.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ultralytics-thop))
$(eval $(call BuildPackage,python3-ultralytics-thop))
$(eval $(call BuildPackage,python3-ultralytics-thop-src))
