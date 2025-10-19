include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-nodejs-version
PKG_VERSION:=0.4.0
PKG_RELEASE:=1

PYPI_NAME:=hatch_nodejs_version
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch-nodejs-version
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Hatch plugin for versioning from a package.json file
  URL:=https://github.com/jupyterlab/hatch-nodejs-version
  DEPENDS:=+python3
endef

define Package/python3-hatch-nodejs-version/description
This package provides two Hatch plugins
version source plugin that reads/writes the package version from the version field of the Node.js package.json file.
metadata hook plugin that reads PEP 621 metadata from the Node.js package.json file.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hatch-nodejs-version))
$(eval $(call BuildPackage,python3-hatch-nodejs-version))
$(eval $(call BuildPackage,python3-hatch-nodejs-version-src))
