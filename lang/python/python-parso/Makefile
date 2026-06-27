include $(TOPDIR)/rules.mk

PKG_NAME:=python-parso
PKG_VERSION:=0.8.7
PKG_RELEASE:=1

PYPI_NAME:=parso
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-parso
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An autocompletion tool for Python that can be used for text editors.
  URL:=https://parso.readthedocs.org/
  DEPENDS:=+python3
endef

define Package/python3-parso/description
  Parso is a Python parser that supports error recovery and round-trip parsing for different Python versions (in multiple Python versions). Parso is also able to list multiple syntax errors in your python file.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-parso))
$(eval $(call BuildPackage,python3-parso))
$(eval $(call BuildPackage,python3-parso-src))
