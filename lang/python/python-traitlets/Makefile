include $(TOPDIR)/rules.mk

PKG_NAME:=python-traitlets
PKG_VERSION:=5.15.1
PKG_RELEASE:=1

PYPI_NAME:=traitlets
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-traitlets
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Traitlets Python configuration system
  URL:=https://traitlets.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-traitlets/description
  Traitlets powers the configuration system of IPython and Jupyter and the declarative API of IPython interactive widgets.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-traitlets))
$(eval $(call BuildPackage,python3-traitlets))
$(eval $(call BuildPackage,python3-traitlets-src))
