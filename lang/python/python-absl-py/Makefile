include $(TOPDIR)/rules.mk

PKG_NAME:=python-absl-py
PKG_VERSION:=2.4.0
PKG_RELEASE:=1

PYPI_NAME:=absl_py
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-absl-py
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Abseil Common Libraries (Python)
  URL:=https://github.com/abseil/abseil-py
  DEPENDS:=+python3
endef

define Package/python3-absl-py/description
This repository is a collection of Python library code for building Python applications. The code is collected from Google's own Python code base, and has been extensively tested and used in production.
endef

$(eval $(call Py3Package,python3-absl-py))
$(eval $(call BuildPackage,python3-absl-py))
$(eval $(call BuildPackage,python3-absl-py-src))
$(eval $(call HostBuild))
