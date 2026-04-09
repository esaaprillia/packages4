#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-defusedxml
PKG_VERSION:=0.7.1
PKG_RELEASE:=2

PKG_MAINTAINER:=Eneas U de Queiroz <cotequeiroz@gmail.com>
PKG_LICENSE:=Python-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

PYPI_NAME:=defusedxml
PKG_HASH:=1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-defusedxml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=XML bomb protection for Python
  URL:=https://github.com/tiran/defusedxml
  DEPENDS:= \
	+python3-light \
	+python3-xml
endef

define Package/python3-defusedxml/description
  The defusedxml package contains several Python-only workarounds and fixes for
  denial of service and other vulnerabilities in Python’s XML libraries.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-defusedxml))
$(eval $(call BuildPackage,python3-defusedxml))
$(eval $(call BuildPackage,python3-defusedxml-src))
