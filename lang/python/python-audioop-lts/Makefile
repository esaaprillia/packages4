include $(TOPDIR)/rules.mk

PKG_NAME:=python-audioop-lts
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=audioop_lts
PKG_HASH:=e81268da0baa880431b68b1308ab7257eb33f356e57a5f9b1f915dfb13dd1387

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-audioop-lts
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=LTS Port of Python audioop
  URL:=https://github.com/AbstractUmbra/audioop
  DEPENDS:=+python3
endef

define Package/python3-audioop-lts/description
An LTS port of the Python builtin module audioop which was deprecated since version 3.11 and removed in 3.13.
This project exists to maintain this module for future versions.
endef

$(eval $(call Py3Package,python3-audioop-lts))
$(eval $(call BuildPackage,python3-audioop-lts))
$(eval $(call BuildPackage,python3-audioop-lts-src))
