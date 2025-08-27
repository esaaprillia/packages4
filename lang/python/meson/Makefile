include $(TOPDIR)/rules.mk

PKG_NAME:=meson
PKG_VERSION:=1.6.1
PKG_RELEASE:=1

#PYPI_NAME:=meson
#PKG_HASH:=567e533adf255de73a2de35049b99923caf872a455af9ce03e01077e0d384bed

PKG_SOURCE_URL:=https://github.com/numpy/meson.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=f754c4258805056ed7be09830d96af45215d341b
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host pyproject-metadata/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/meson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Meson Build System
  URL:=https://github.com/mesonbuild/meson
  DEPENDS:=+python3
endef

define Package/meson/description
  Meson® is a project to create the best possible next-generation build system.
endef

define Host/Prepare
	$(call Host/Prepare/Default)
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/lib/meson
	$(INSTALL_CONF) files/openwrt-cross.txt.in $(STAGING_DIR_HOSTPKG)/lib/meson/
	$(INSTALL_CONF) files/openwrt-native.txt.in $(STAGING_DIR_HOSTPKG)/lib/meson/
endef

$(eval $(call Py3Package,meson))
$(eval $(call BuildPackage,meson))
$(eval $(call BuildPackage,meson-src))
$(eval $(call HostBuild))
