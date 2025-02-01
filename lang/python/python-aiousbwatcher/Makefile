include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiousbwatcher
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=aiousbwatcher
PKG_HASH:=3a22a47b8dd1ca078bf8fbc3139cd16b7dabb11b901a1a96620246794baf679f

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiousbwatcher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Watch for USB devices to be plugged and unplugged
  URL:=https://github.com/bluetooth-devices/aiousbwatcher
  DEPENDS:=+python3-light +python3-asyncinotify
endef

define Package/python3-aiousbwatcher/description
Watch for USB devices to be plugged and unplugged
endef

$(eval $(call Py3Package,python3-aiousbwatcher))
$(eval $(call BuildPackage,python3-aiousbwatcher))
$(eval $(call BuildPackage,python3-aiousbwatcher-src))
