include $(TOPDIR)/rules.mk

PKG_NAME:=python-btlewrap
PKG_VERSION:=0.1.1
PKG_RELEASE:=1

PYPI_NAME:=btlewrap
PKG_HASH:=f3befbeed3a6c5abf99dc0d6bbaab570868a5175e52252d53c45bd78c85cc294

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-btlewrap
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=wrapper around different bluetooth low energy backends
  URL:=https://github.com/ChristianKuehnel/btlewrap
  DEPENDS:=+python3-logging
endef

define Package/python3-btlewrap/description
  Bluetooth LowEnergy wrapper for different python backends. This gives
  you a nice API so that you can use different Bluetooth implementations
  on different platforms.
endef

define Py3Package/python3-btlewrap/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/test
endef

$(eval $(call Py3Package,python3-btlewrap))
$(eval $(call BuildPackage,python3-btlewrap))
$(eval $(call BuildPackage,python3-btlewrap-src))
