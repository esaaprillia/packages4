include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydispatcher
PKG_VERSION:=2.0.7
PKG_RELEASE:=1

PYPI_NAME:=PyDispatcher
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=license.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pydispatcher
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Multi-producer multi-consumer in-memory signal dispatch system
  URL:=https://github.com/mcfletch/pydispatcher
  DEPENDS:= \
	+python3
endef

define Package/python3-pydispatcher/description
  PyDispatcher provides the Python programmer with a multiple-producer-multiple-consumer signal-registration and routing infrastructure for use in multiple contexts.
endef

PYTHON3_PKG_WHEEL_NAME:=pydispatcher

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pydispatcher))
$(eval $(call BuildPackage,python3-pydispatcher))
$(eval $(call BuildPackage,python3-pydispatcher-src))
