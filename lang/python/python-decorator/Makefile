# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-decorator
PKG_VERSION:=5.1.1
PKG_RELEASE:=1
PKG_MAINTAINER:=Josef Schlehofer <pepe.schlehofer@gmail.com> 
PKG_CPE_ID:=cpe:/a:python:decorator

PYPI_NAME:=decorator
PKG_HASH:=637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-decorator
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/micheles/decorator
  TITLE:=python3-decodator
  DEPENDS:=+python3-light
endef

$(eval $(call Py3Package,python3-decorator))
$(eval $(call BuildPackage,python3-decorator))
$(eval $(call BuildPackage,python3-decorator-src))
