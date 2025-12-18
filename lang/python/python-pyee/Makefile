include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyee
PKG_VERSION:=13.0.0
PKG_RELEASE:=1

PYPI_NAME:=pyee
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyee
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A rough port of Node.js's EventEmitter to Python with a few tricks of its own
  URL:=https://pyee.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-typing-extensions
endef

define Package/python3-pyee/description
pyee supplies a EventEmitter object that is similar to the EventEmitter class from Node.js.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyee))
$(eval $(call BuildPackage,python3-pyee))
$(eval $(call BuildPackage,python3-pyee-src))
