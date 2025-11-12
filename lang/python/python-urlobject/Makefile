include $(TOPDIR)/rules.mk

PKG_NAME:=python-urlobject
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=urlobject
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=UNLICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-urlobject
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A utility class for manipulating URLs.
  URL:=http://github.com/zacharyvoase/urlobject
  DEPENDS:=+python3
endef

define Package/python3-urlobject/description
URLObject is a utility class for manipulating URLs. The latest incarnation of this library builds upon the ideas of its predecessor, but aims for a clearer API, focusing on proper method names over operator overrides. It’s also being developed from the ground up in a test-driven manner, and has full Sphinx documentation.
endef

$(eval $(call Py3Package,python3-urlobject))
$(eval $(call BuildPackage,python3-urlobject))
$(eval $(call BuildPackage,python3-urlobject-src))
