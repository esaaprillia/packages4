include $(TOPDIR)/rules.mk

PKG_NAME:=python-srp
PKG_VERSION:=1.0.22
PKG_RELEASE:=1

PYPI_NAME:=srp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-srp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python implementation of the Secure Remote Password protocol (SRP)
  URL:=https://github.com/cocagne/pysrp
  DEPENDS:=+python3 +python3-six
endef

define Package/python3-srp/description
pysrp provides a Python implementation of the Secure Remote Password protocol (SRP).
endef

$(eval $(call Py3Package,python3-srp))
$(eval $(call BuildPackage,python3-srp))
$(eval $(call BuildPackage,python3-srp-src))
