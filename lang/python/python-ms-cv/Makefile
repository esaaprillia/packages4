include $(TOPDIR)/rules.mk

PKG_NAME:=python-ms-cv
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PYPI_NAME:=ms_cv
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pytest-runner/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ms-cv
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Correlation Vector
  URL:=https://github.com/OpenXbox/ms_cv
  DEPENDS:=+python3
endef

define Package/python3-ms-cv/description
A correlation vector implementation in python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ms-cv))
$(eval $(call BuildPackage,python3-ms-cv))
$(eval $(call BuildPackage,python3-ms-cv-src))
