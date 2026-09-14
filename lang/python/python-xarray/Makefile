include $(TOPDIR)/rules.mk

PKG_NAME:=python-xarray
PKG_VERSION:=2026.7.0
PKG_RELEASE:=1

PYPI_NAME:=xarray
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-vcs-versioning/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-xarray
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=N-D labeled arrays and datasets in Python
  URL:=https://xarray.dev/
  DEPENDS:=+python3 +python3-numpy +python3-packaging +python3-pandas
endef

define Package/python3-xarray/description
  xarray (pronounced "ex-array", formerly known as xray) is an open source project and Python package that makes working with labelled multi-dimensional arrays simple, efficient, and fun!
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-xarray))
$(eval $(call BuildPackage,python3-xarray))
$(eval $(call BuildPackage,python3-xarray-src))
