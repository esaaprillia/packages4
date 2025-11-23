include $(TOPDIR)/rules.mk

PKG_NAME:=python-emoji
PKG_VERSION:=2.15.0
PKG_RELEASE:=1

PYPI_NAME:=emoji
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-emoji
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Emoji for Python
  URL:=https://github.com/carpedm20/emoji/
  DEPENDS:=+python3
endef

define Package/python3-emoji/description
Emoji for Python. This project was inspired by kyokomi.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-emoji))
$(eval $(call BuildPackage,python3-emoji))
$(eval $(call BuildPackage,python3-emoji-src))
