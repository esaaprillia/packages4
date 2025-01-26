include $(TOPDIR)/rules.mk

PKG_NAME:=python-rtmapi
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PYPI_NAME:=RtmAPI
PKG_HASH:=a37bafe1cb49e3f190dd282d5aa62368c3e5aadb2af1d35b5f586ca6dfae7363

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rtmapi
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=API package for rememberthemilk.com
  URL:=https://bitbucket.org/rtmapi/rtmapi
  DEPENDS:=+python3 +python3-httplib2
endef

define Package/python3-rtmapi/description
This is an API package for Remember the Milk. Using their API and this package you can create Python applications accessing your task lists on RTM.
See the example script (in the examples folder) for basic usage. You should have read the essential API docs on their website before.
endef

PYTHON3_PKG_WHEEL_NAME:=RtmAPI
PYTHON3_PKG_WHEEL_VERSION:=0.7.2

$(eval $(call Py3Package,python3-rtmapi))
$(eval $(call BuildPackage,python3-rtmapi))
$(eval $(call BuildPackage,python3-rtmapi-src))
