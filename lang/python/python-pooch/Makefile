include $(TOPDIR)/rules.mk

PKG_NAME:=python-pooch
PKG_VERSION:=1.8.2
PKG_RELEASE:=1

PYPI_NAME:=pooch
PKG_HASH:=76561f0de68a01da4df6af38e9955c4c9d1a5c90da73f7e40276a5728ec83d10

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pooch
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A friend to fetch your data files
  URL:=https://platformdirs.readthedocs.io/
  DEPENDS:=+python3 +python3-packaging +python3-platformdirs +python3-requests
endef

define Package/python3-pooch/description
  Pooch is a Python library that can manage data by downloading files from a server (only when needed) and storing them locally in a data cache (a folder on your computer).
endef

$(eval $(call Py3Package,python3-pooch))
$(eval $(call BuildPackage,python3-pooch))
$(eval $(call BuildPackage,python3-pooch-src))
$(eval $(call HostBuild))
