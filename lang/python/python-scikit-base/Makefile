include $(TOPDIR)/rules.mk

PKG_NAME:=python-scikit-base
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=scikit_base
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-toml/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-scikit-base
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Base classes for sklearn-like parametric objects
  URL:=https://github.com/sktime/skbase
  DEPENDS:= +python3-light
endef

define Package/python3-scikit-base/description
  skbase provides base classes for creating scikit-learn-like parametric objects, along with tools to make it easier to build your own packages that follow these design patterns.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-scikit-base))
$(eval $(call BuildPackage,python3-scikit-base))
$(eval $(call BuildPackage,python3-scikit-base-src))
