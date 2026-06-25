include $(TOPDIR)/rules.mk

PKG_NAME:=python-tkdesigner
PKG_VERSION:=1.0.7
PKG_RELEASE:=1

PYPI_NAME:=tkdesigner
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tkdesigner
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An easy and fast way to create a Python GUI
  URL:=https://github.com/ParthJadhav/Tkinter-Designer
  DEPENDS:=+python3 +python3-requests +python3-jinja2 +python3-pillow +python3-urllib3 +python3-tkinter
endef

define Package/python3-tkdesigner/description
Tkinter Designer was created to speed up the GUI development process in Python.
endef

$(eval $(call Py3Package,python3-tkdesigner))
$(eval $(call BuildPackage,python3-tkdesigner))
$(eval $(call BuildPackage,python3-tkdesigner-src))
