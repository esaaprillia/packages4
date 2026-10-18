include $(TOPDIR)/rules.mk

PKG_NAME:=python-bitstring
PKG_VERSION:=5.0.0
PKG_RELEASE:=1

PYPI_NAME:=bitstring
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-bitstring
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple construction, analysis and modification of binary data.
  URL:=https://bitstring.readthedocs.io/en/stable/index.html
  DEPENDS:=+python3 +python3-tibs
endef

define Package/python3-bitstring/description
  bitstring is a Python module to help make the creation and analysis of all types of bit-level binary data as simple and efficient as possible.
endef

$(eval $(call Py3Package,python3-bitstring))
$(eval $(call BuildPackage,python3-bitstring))
$(eval $(call BuildPackage,python3-bitstring-src))
