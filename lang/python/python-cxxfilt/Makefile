include $(TOPDIR)/rules.mk

PKG_NAME:=python-cxxfilt
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PYPI_NAME:=cxxfilt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cxxfilt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python interface to c++filt / abi::__cxa_demangle
  URL:=https://github.com/afq984/python-cxxfilt
  DEPENDS:=+python3
endef

define Package/python3-cxxfilt/description
Demangling C++ symbols in Python / interface to abi::__cxa_demangle
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cxxfilt))
$(eval $(call BuildPackage,python3-cxxfilt))
$(eval $(call BuildPackage,python3-cxxfilt-src))
