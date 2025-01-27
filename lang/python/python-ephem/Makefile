include $(TOPDIR)/rules.mk

PKG_NAME:=python-ephem
PKG_VERSION:=4.1.6
PKG_RELEASE:=1

PYPI_NAME:=ephem
PKG_HASH:=0ed2e4ea76f9db3eede2204adab8af3f1708201c7c04ee8511e710a54ca6425f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ephem
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Compute positions of the planets and stars
  URL:=http://rhodesmill.org/pyephem/
  DEPENDS:=+python3-urllib
endef

define Package/python3-ephem/description
  Compute positions of the planets and stars.
endef

define Py3Package/python3-ephem/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/ephem/doc
-|$(PYTHON3_PKG_DIR)/ephem/tests
endef

$(eval $(call Py3Package,python3-ephem))
$(eval $(call BuildPackage,python3-ephem))
$(eval $(call BuildPackage,python3-ephem-src))
