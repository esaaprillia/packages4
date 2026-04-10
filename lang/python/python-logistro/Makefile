include $(TOPDIR)/rules.mk

PKG_NAME:=python-logistro
PKG_VERSION:=2.0.1
PKG_RELEASE:=1

PYPI_NAME:=logistro
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-git-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-logistro
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple wrapper over logging for a couple basic features
  URL:=https://github.com/geopozo/logistro
  DEPENDS:=+python3
endef

define Package/python3-logistro/description
  logistro is an extremely light addition to logging, providing sensible defaults.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-logistro))
$(eval $(call BuildPackage,python3-logistro))
$(eval $(call BuildPackage,python3-logistro-src))
