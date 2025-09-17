include $(TOPDIR)/rules.mk

PKG_NAME:=onetbb
PKG_VERSION:=2022.2.0
PKG_RELEASE:=1

PKG_SOURCE:=oneTBB-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/uxlfoundation/oneTBB/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/oneTBB-$(PKG_VERSION)
CMAKE_BINARY_SUBDIR := build

PKG_BUILD_DEPENDS:=swig/host
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/meson/cmake.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

PYTHON3_PKG_SETUP_DIR:=python

define Package/onetbb
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=oneAPI Threading Building Blocks (oneTBB)
	DEPENDS:=+libstdcpp +libhwloc +libucontext
	URL:=https://uxlfoundation.github.io/oneTBB/
endef

define Package/onetbb/description
	oneTBB is a flexible C++ library that simplifies the work of adding parallelism to complex applications, even if you are not a threading expert.
endef

define Package/python3-onetbb
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=oneAPI Threading Building Blocks (python bindings)
  URL:=https://uxlfoundation.github.io/oneTBB/
  DEPENDS:=+python3-light +onetbb
endef

define Package/python3-onetbb/description
	It is a preview Python* module which unlocks opportunities for additional performance in multi-threaded and multiprocess Python programs by enabling threading composability between two or more thread-enabled libraries like Numpy, Scipy, Sklearn, Dask, Joblib, and etc.
endef

CMAKE_OPTIONS += \
	-DTBB4PY_BUILD=ON \
	-DTBB_STRICT=OFF \
	-DTBB_TEST=OFF \
	-DTBB_DISABLE_HWLOC_AUTOMATIC_SEARCH=OFF

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/tbb.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/tbb.pc
endef

define Package/onetbb/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/* $(1)$(PYTHON3_PKG_DIR)
endef

$(eval $(call BuildPackage,onetbb))
$(eval $(call Py3Package,python3-onetbb))
$(eval $(call BuildPackage,python3-onetbb))
$(eval $(call BuildPackage,python3-onetbb-src))
