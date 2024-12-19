include $(TOPDIR)/rules.mk

PKG_NAME:=python-defusedxml
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=defusedxml
PKG_HASH:=1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-defusedxml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=XML bomb protection for Python stdlib modules
  URL:=https://github.com/tiran/defusedxml
  DEPENDS:=+python3
endef

define Package/python3-defusedxml/description
defusedxml -- defusing XML bombs and other exploits
endef

$(eval $(call Py3Package,python3-defusedxml))
$(eval $(call BuildPackage,python3-defusedxml))
$(eval $(call BuildPackage,python3-defusedxml-src))
