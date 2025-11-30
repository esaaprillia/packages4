include $(TOPDIR)/rules.mk

PKG_NAME:=localtuya
PKG_VERSION:=5.2.4
PKG_RELEASE:=1

PYPI_NAME:=localtuya
PKG_SOURCE_URL:=https://github.com/rospogrigio/localtuya/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/localtuya
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=local handling for Tuya devices
  URL:=https://github.com/rospogrigio/localtuya
  DEPENDS:=+python3
endef

define Package/localtuya/description
A Home Assistant custom Integration for local handling of Tuya-based devices.
endef

define Py3Package/localtuya/install
	$(INSTALL_DIR) $(1)$(PYTHON3_PKG_DIR)
	$(CP) $(PKG_INSTALL_DIR)$(PYTHON3_PKG_DIR)/* $(1)$(PYTHON3_PKG_DIR)
endef

$(eval $(call Py3Package,localtuya))
$(eval $(call BuildPackage,localtuya))
$(eval $(call BuildPackage,localtuya-src))
