include $(TOPDIR)/rules.mk

PKG_NAME:=python-pure-eval
PKG_VERSION:=0.2.3
PKG_RELEASE:=1

PYPI_NAME:=pure_eval
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pure-eval
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Safely evaluate AST nodes without side effects
  URL:=https://github.com/alexmojaki/pure_eval
  DEPENDS:=+python3
endef

define Package/python3-pure-eval/description
  This is a Python package that lets you safely evaluate certain AST nodes without triggering arbitrary code that may have unwanted side effects.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pure-eval))
$(eval $(call BuildPackage,python3-pure-eval))
$(eval $(call BuildPackage,python3-pure-eval-src))
