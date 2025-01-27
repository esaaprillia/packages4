include $(TOPDIR)/rules.mk

PKG_NAME:=python-debugpy
PKG_VERSION:=1.8.12
PKG_RELEASE:=1

PYPI_NAME:=debugpy
PKG_HASH:=646530b04f45c830ceae8e491ca1c9320a2d2f0efea3141487c82130aba70dce

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-debugpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of the Debug Adapter Protocol for Python
  URL:=https://github.com/microsoft/debugpy
  DEPENDS:=+python3
endef

define Package/python3-debugpy/description
debugpy is an implementation of the Debug Adapter Protocol for Python.
endef

$(eval $(call Py3Package,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy))
$(eval $(call BuildPackage,python3-debugpy-src))
