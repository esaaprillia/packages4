include $(TOPDIR)/rules.mk

PKG_NAME:=python-xknxproject
PKG_VERSION:=3.8.2
PKG_RELEASE:=1

PYPI_NAME:=xknxproject
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-xknxproject
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to gather information from ETS project files used for KNX
  URL:=https://github.com/XKNX/xknxproject
  DEPENDS:=+python3 +python3-pyzipper +python3-striprtf
endef

define Package/python3-xknxproject/description
This project aims to provide a library that can be used to extract and parse KNX project files and read out useful information including the group addresses, devices, their descriptions and possibly more.
endef

$(eval $(call Py3Package,python3-xknxproject))
$(eval $(call BuildPackage,python3-xknxproject))
$(eval $(call BuildPackage,python3-xknxproject-src))
