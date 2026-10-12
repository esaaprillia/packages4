include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-cython
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=hatch_cython
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-build/host \
	python-installer/host \
	python-cython/host \
	python-hatchling/host \
	python-setuptools/host \
	python-typing-extensions/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch-cython
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Cython build hooks for hatch
  URL:=https://github.com/joshua-auchincloss/hatch-cython
  DEPENDS:=+python3-light +python3-cython +python3-hatchling +python3-setuptools +python3-typing-extensions
  BUILDONLY:=1
endef

define Package/python3-hatch-cython/description
The build hook plugin name is cython. It can be configured either globally (applies to all build targets) or specifically for the wheel target.
endef

$(eval $(call Py3Package,python3-hatch-cython))
$(eval $(call BuildPackage,python3-hatch-cython))
$(eval $(call BuildPackage,python3-hatch-cython-src))
$(eval $(call HostBuild))
