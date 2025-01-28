include $(TOPDIR)/rules.mk

PKG_NAME:=python-cloudpickle
PKG_VERSION:=3.1.1
PKG_RELEASE:=1

PYPI_NAME:=cloudpickle
PKG_HASH:=b216fa8ae4019d5482a8ac3c95d8f6346115d8835911fd4aefd1a445e4242c64

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cloudpickle
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Pickler class to extend the standard pickle.Pickler functionality
  URL:=https://github.com/cloudpipe/cloudpickle
  DEPENDS:=+python3
endef

define Package/python3-cloudpickle/description
cloudpickle makes it possible to serialize Python constructs not supported by the default pickle module from the Python standard library.
endef

$(eval $(call Py3Package,python3-cloudpickle))
$(eval $(call BuildPackage,python3-cloudpickle))
$(eval $(call BuildPackage,python3-cloudpickle-src))
