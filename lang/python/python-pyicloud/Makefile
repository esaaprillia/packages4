include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyicloud
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=pyicloud
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyicloud
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python + iCloud wrapper to access iPhone and Calendar data.
  URL:=https://github.com/timlaing/pyicloud/
  DEPENDS:=+python3 +python3-certifi +python3-click +python3-fido2 +python3-keyring +python3-keyrings-alt +python3-requests +python3-srp +python3-tzlocal
endef

define Package/python3-pyicloud/description
PyiCloud is a module which allows pythonistas to interact with iCloud webservices.
endef

$(eval $(call Py3Package,python3-pyicloud))
$(eval $(call BuildPackage,python3-pyicloud))
$(eval $(call BuildPackage,python3-pyicloud-src))
