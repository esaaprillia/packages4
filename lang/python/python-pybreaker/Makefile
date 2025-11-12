include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybreaker
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PYPI_NAME:=pybreaker
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pybreaker
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python implementation of the Circuit Breaker pattern
  URL:=http://github.com/danielfm/pybreaker
  DEPENDS:=+python3
endef

define Package/python3-pybreaker/description
PyBreaker is a Python implementation of the Circuit Breaker pattern, described in Michael T. Nygard’s book Release It!.
endef

$(eval $(call Py3Package,python3-pybreaker))
$(eval $(call BuildPackage,python3-pybreaker))
$(eval $(call BuildPackage,python3-pybreaker-src))
