include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyiqvia
PKG_VERSION:=2023.12.0
PKG_RELEASE:=1

PYPI_NAME:=pyiqvia
PKG_HASH:=7486e11572f8764d43ce709cdf060338c8df756553793170cb0aa19ac0454f01

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyiqvia
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:= A clean, async-focused Python3 API for IQVIA data
  URL:=https://github.com/bachya/pyiqvia
  DEPENDS:=+python3 +python3-aiohttp +python3-backoff +python3-certifi +python3-yarl
endef

define Package/python3-pyiqvia/description
  pyiqvia is an async-focused Python3 library for allergen, asthma, and disease data from the IQVIA™ family of websites (such as Pollen.com, FluStar, and more).
endef

$(eval $(call Py3Package,python3-pyiqvia))
$(eval $(call BuildPackage,python3-pyiqvia))
$(eval $(call BuildPackage,python3-pyiqvia-src))
