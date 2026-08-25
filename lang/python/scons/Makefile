include $(TOPDIR)/rules.mk

PKG_NAME:=scons
PKG_VERSION:=4.11.0
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/scons
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Open Source next-generation build tool.
  URL:=https://www.scons.org/
  DEPENDS:=+python3
endef

define Package/scons/description
  SCons is an Open Source software construction tool which orchestrates the construction of software (and other tangible products such as documentation files) by determining which component pieces must be built or rebuilt and invoking the necessary commands to build them.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,scons))
$(eval $(call BuildPackage,scons))
$(eval $(call BuildPackage,scons-src))
