include $(TOPDIR)/rules.mk

PKG_NAME:=binho-host-adapter
PKG_VERSION:=0.1.6
PKG_RELEASE:=1

PYPI_NAME:=binho-host-adapter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-binho-host-adapter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python Libraries for Binho Multi-Protocol USB Host Adapters
  URL:=https://binho.io/
  DEPENDS:=+python3-light +python3-pyserial
endef

define Package/python3-binho-host-adapter/description
Cross-platform Python 3.x library for automated control of Binho Multi-Protocol USB Host Adapters. More information about the device can be found at https://www.binho.io
endef

$(eval $(call Py3Package,python3-binho-host-adapter))
$(eval $(call BuildPackage,python3-binho-host-adapter))
$(eval $(call BuildPackage,python3-binho-host-adapter-src))
