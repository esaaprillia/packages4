include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydoods
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PYPI_NAME:=pydoods
PKG_HASH:=7dd84bdf48269b996fde26c38dc93b90fe804c7c44511b858335f918a46337af

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pydoods
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python wrapper for the DOODS image detection service
  URL:=https://github.com/snowzach/pydoods
  DEPENDS:=+python3 +python3-requests
endef

define Package/python3-pydoods/description
This is a simple Python wrapper for the DOODS service. DOODS allows you to do remote object detection in images easily.
endef

$(eval $(call Py3Package,python3-pydoods))
$(eval $(call BuildPackage,python3-pydoods))
$(eval $(call BuildPackage,python3-pydoods-src))
