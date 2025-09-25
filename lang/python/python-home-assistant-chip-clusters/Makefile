include $(TOPDIR)/rules.mk

PKG_NAME:=python-home-assistant-chip-clusters
PKG_VERSION:=2025.7.0
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_chip_clusters
PKG_SOURCE:=$(PYPI_NAME)-$(PKG_VERSION)-py3-none-any.whl
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/bb/ee/1f80b7d35087b4da2343cc7e9f6af7796247a982f2d12a4598fa1c6029b1/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/$(PYPI_NAME)-$(PKG_VERSION)

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-home-assistant-chip-clusters
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python-base APIs and tools for CHIP
  URL:=https://github.com/project-chip/connectedhomeip
  DEPENDS:=+python3-aenum +python3-dacite
endef

define Package/python3-home-assistant-chip-clusters/description
  Matter (formerly Project CHIP) creates more connections
  between more objects, simplifying development for manufacturers and increasing
  compatibility for consumers, guided by the Connectivity Standards Alliance.
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)/openwrt-build
	$(CP) $(DL_DIR)/$(PKG_SOURCE) $(PKG_BUILD_DIR)/openwrt-build
endef

Build/Compile:=:

$(eval $(call Py3Package,python3-home-assistant-chip-clusters))
$(eval $(call BuildPackage,python3-home-assistant-chip-clusters))
$(eval $(call BuildPackage,python3-home-assistant-chip-clusters-src))
