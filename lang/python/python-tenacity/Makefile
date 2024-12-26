include $(TOPDIR)/rules.mk

PKG_NAME:=python-tenacity
PKG_VERSION:=9.0.0
PKG_RELEASE:=1

PYPI_NAME:=tenacity
PKG_HASH:=807f37ca97d62aa361264d497b0e31e92b8027044942bfa756160d908320d73b

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tenacity
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Retrying library for Python
  URL:=http://tenacity.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-tenacity/description
Tenacity is an Apache 2.0 licensed general-purpose retrying library, written in Python, to simplify the task of adding retry behavior to just about anything. It originates from a fork of retrying which is sadly no longer maintained. Tenacity isn't api compatible with retrying but adds significant new functionality and fixes a number of longstanding bugs.
endef

$(eval $(call Py3Package,python3-tenacity))
$(eval $(call BuildPackage,python3-tenacity))
$(eval $(call BuildPackage,python3-tenacity-src))
