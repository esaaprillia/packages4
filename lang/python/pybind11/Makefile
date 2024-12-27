include $(TOPDIR)/rules.mk

PKG_NAME:=pybind11
PKG_VERSION:=2.13.6
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pybind/pybind11/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

PKG_BUILD_PARALLEL:=1

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/pybind11
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Seamless operability between C++11 and Python
	URL:=pybind11.readthedocs.io/
	DEPENDS:=+python3
endef

define Package/pybind11/description
	pybind11 — Seamless operability between C++11 and Python
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DPYBIND11_TEST=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/pybind11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/pybind11 \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

define Package/pybind11/install
	$(INSTALL_DIR) \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/pybind11 \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

$(eval $(call Py3Package,pybind11))
$(eval $(call BuildPackage,pybind11))
$(eval $(call BuildPackage,pybind11-src))
$(eval $(call HostBuild))
