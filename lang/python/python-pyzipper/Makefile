include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyzipper
PKG_VERSION:=0.3.6
PKG_RELEASE:=1

PYPI_NAME:=pyzipper
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyzipper
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=AES encryption for zipfile.
  URL:=https://github.com/danifus/pyzipper
  DEPENDS:=+python3 +python3-cryptodomex
endef

define Package/python3-pyzipper/description
A replacement for Python’s zipfile that can read and write AES encrypted zip files. Forked from Python 3.7’s zipfile module, it features the same zipfile API from that time (most notably, lacking support for pathlib-compatible wrappers that were introduced in Python 3.8).
endef

$(eval $(call Py3Package,python3-pyzipper))
$(eval $(call BuildPackage,python3-pyzipper))
$(eval $(call BuildPackage,python3-pyzipper-src))
